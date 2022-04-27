<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contacts;

class ContactsController extends Controller
{
    public function getContact()
    {
        return view("frontend.pages.lien-he");
    }

    public function postContact(Request $request)
    {
        $contact = new Contacts();
        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->phone = $request->phone;
        $contact->message = $request->message;
        $contact->save();
        echo "<script>alert('Cảm ơn quý khách đã góp ý !');location.href='/'</script>";
    }

    public function index()
    {
        $contacts = Contacts::paginate(15);
        return view("backend.contact.list", compact('contacts'));
    }

    public function getdel($id)
    {

        $contacts = Contacts::find($id);

        $contacts->delete();
        return redirect()->route('contact.list')->with('success', 'Delete successfully');
    }
}
