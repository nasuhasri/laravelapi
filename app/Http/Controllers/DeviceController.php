<?php

namespace App\Http\Controllers;

use App\Models\Device;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class DeviceController extends Controller
{
    function listAll(){
        return (Device::all());
    }

    function list($id=null){
        // if id exists then find that device else find all
        return ($id?Device::find($id) : Device::all());
    }

    function getDevice($id){
        return (Device::find($id));
    }

    function addDevice(Request $req){
        $device = new Device;

        $device->name = $req->name;
        $device->member_id = $req->member_id;

        $result = $device->save();

        if($result){
            return ["Result" => "Data has been saved."];
        } else {
            return ["Result" => "Data fail to saved."];
        }
    }

    function update(Request $req){
        $device = Device::find($req->id);
        $device->name = $req->name;
        $device->member_id = $req->member_id;
        $result = $device->save();

        if($result){
            return ["Result" => "Data has been updated."];
        } else {
            return ["Result" => "Data fail to save."];
        }
    }

    function search($name){
        $result = Device::where("name", "like", "%".$name."%")->get();
        
        if(count($result) > 0){
            return $result;
        }
        else{
            return ["Result" => "Data not found."]; 
        }
    }

    function delete($id){
        // single delete
        // $device = Device::find($id);
        // $result = $device->delete();

        // multiple delete
        $ids = explode(',', $id);
        foreach($ids as $id){
            $result = Device::where('id', $id)->delete();
        }

        // implode - join array elements with string
        if($result){
            return ["Result" => "Record " . implode(",", $ids) . " has been deleted."];
        }
        else{
            return ["Result" => "Record fail to delete."];
        }
    }

    function testData(Request $req){
        $rules = array(
            "member_id" => "required|min:2|max:4"
        );

        $validator = Validator::make($req->all(), $rules);

        if($validator->fails()){
            // return $validator->errors(); // will return 200

            return response()->json($validator->errors(), 401); // return 401 - unauthorized
        }
        else{

            $result = $this->addDevice($req); // use function addDevice

            if($result){
                return ["Result" => "Data has been saved."];
            } else {
                return ["Result" => "Data fail to saved."];
            }
        }
    }
}
