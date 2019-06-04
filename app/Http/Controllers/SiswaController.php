<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Siswa;
use App\User;
use App\Http\Resources\siswaResource;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Hash;

class SiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('user.siswa');
    }

    public function getAllSiswa()
    {
        $datasiswa = siswaResource::collection(Siswa::all());
        return response()->json($datasiswa);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8'],
            'nis'=>'required',
            'nama'=>'required',
            'alamat'=>'required',
            'notelp'=>'required',
            'kelas'=>'required',
            'avatar'=>'required',
        ]);

        $user = User::create([
            'email'=>$request->email,
            'password'=>Hash::make($request->password),
            'role'=>'siswa'
        ]);
        $avatar='';
        if ($request->avatar) {
            $avatar = $request->avatar->store('avatars','public');
        }
        $user->siswa()->create([
            'nis'=>$request->nis,
            'nama'=>$request->nama,
            'alamat'=>$request->alamat,
            'notelp'=>$request->notelp,
            'kelas'=>$request->kelas,
            'avatar'=>$avatar,
        ]);

        if ($user) {
            return response()->json([
                'success'=>true,
                'type'=> 'add',
                'message'=>'Berhasil Menambahkan Siswa',
            ]);
        }
        return response()->json([
            'success'=>false,
            'type'=> 'add',
            'message'=>'Gagal Menambahkan Siswa'
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $siswa = Siswa::findOrFail($id);
        $siswaResource = new siswaResource($siswa);
        return response()->json($siswaResource);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $siswa = Siswa::findOrFail($id);
        $request->validate([
            'email'=>'required|email|unique:users,email,'.$siswa->user->id,
            'nis'=>'required',
            'nama'=>'required',
            'alamat'=>'required',
            'notelp'=>'required',
            'kelas'=>'required',
        ]);

        $avatar = $siswa->avatar;
        if ($request->avatar) {
            if ($siswa->avatar && file_exists(storage_path('app/public/'.$siswa->avatar))) {
                Storage::delete('public/'.$siswa->avatar);
            }
            $file = $request->avatar->store('avatars','public');
            $avatar = $file;
        }

        $siswa->update([
            'nis'=>$request->nis,
            'nama'=>$request->nama,
            'alamat'=>$request->alamat,
            'notelp'=>$request->notelp,
            'kelas'=>$request->kelas,
            'avatar'=>$avatar,
        ]);
        
        if ($request->password) {
            $siswa->user()->update([
                'password'=> Hash::make($request->password),
            ]);
        }    
        $siswa->user()->update([
            'email'=>$request->email,
        ]);

        if ($siswa) {
            return response()->json([
                'success'=>true,
                'type'=> 'update',
                'message'=>'Berhasil Mengubah Siswa',
            ]);
        }
        return response()->json([
            'success'=>false,
            'type'=> 'update',
            'message'=>'Gagal Mengubah Siswa'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $siswa = Siswa::findOrFail($id);
        if ($siswa->avatar && file_exists(storage_path('app/public/'.$siswa->avatar))) {
            Storage::delete('public/'.$siswa->avatar);
        }
        $siswa->user()->delete();
        $siswa->delete();
            if ($siswa) {
                return response()->json([
                    'success'=>true,
                    'type'=> 'delete',
                    'message'=>'Berhasil Menghapus Buku'
                ]);
            }
            return response()->json([
                'success'=>false,
                'type'=> 'delete',
                'message'=>'Gagal Menghapus Buku'
            ]);
    }
}
