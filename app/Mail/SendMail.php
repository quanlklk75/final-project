<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class SendMail extends Mailable
{
    use Queueable, SerializesModels;

    public $data;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($data)
    {
        // dump(config('mail.mailers.smtp'));
        $this->subject = "Thông báo test mail";
        $this->data = $data;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->subject('Cảm ơn quý khách đã mua hàng. Đơn hàng đã được xác nhận và sẵn sàng để giao đến quý khách')->view('mails.send_mail');

//        return $this->subject($this->subject)->replyTo('truongquangvietbg@gmail.com', 'Thông báo đơn hàng')->view('emails.send_mails',[
//            'data' => $this->data
//        ]);
    }
}
