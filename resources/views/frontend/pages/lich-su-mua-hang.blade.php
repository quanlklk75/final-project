@extends("frontend.master")
@section("content")
    <div class="blog-post-area" style="margin-bottom: 60px">
        <h2 class="title text-center">Purchase history
        </h2>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Purchase date
                </th>
                <th>Total money
                </th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            @foreach($orders as $item)
            <tr>
                <td>{{date('d/m/Y', strtotime($item->created_at))}}</td>
                <td>{{number_format($item->total,0,',','.')}}</td>
                <td><a href="{{route('purchase.history_detail', $item->id)}}">Detail</a></td>
            </tr>
            @endforeach

            </tbody>
        </table>
    </div>
@endsection
