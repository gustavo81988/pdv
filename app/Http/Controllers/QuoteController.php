<?php

namespace App\Http\Controllers;
use App\Quote;
use Illuminate\Http\Request;

class QuoteController extends Controller{
    public function postQuote(Request $request){
        $quote = new Quote();
        $quote->content = $request->input('content');
        $quote->save();
        return response()->json( ['quote' => $quote], 201 );
    }

    public function getQuote(){
        $quotes = Quote::all();
        $response = [
            'quotes' => $quotes
        ];
        return response()->json($response, 200);
    }

    public function putQuote(Request $request, $id){
    }

    public function deleteQuote($id){

    }
}
