@extends('backend.master')
@section("title-page", "Order management")
@section("title-description", "Paid order managerment")
@section('content')
    <?php $open = "order"?>

    <div class="form-group">
        <input class="form-control" id="myInput" type="text" placeholder="Search..">

    </div>
    <div class="table table-responsive">
        @include("messages")
        <table class="table table-striped" id="myTable">
            <thead>
            <tr>
                <th>id</th>
                <th>Full name</th>

                <th>Phone number</th>
                <th>Total</th>
                <th>Status</th>
                <th>Action</th>
            </tr>

            </thead>
            <tbody>
            @foreach($orders as $item)
                <tr>
                    <td style="width: 50px;">{{ $item->id }}</td>
                    <td>{{ $item['name'] }}</td>

                    <td>{{ $item->phone}}</td>
                    <td>{{ number_format($item->total, 0,'','.') }} <sup>đ</sup></td>
                    <td>
                        @if($item->status == 0)
                            Unpaid
                        @else
                            <span class="text-success">Paid</span>
                        @endif
                    </td>
                    {{--                    <td>{{ $item->discount }} %</td>--}}
                    <td>
                        @if($item->status == 0)
                            <a onclick="return confirm('Are you sure to confirm the payment of the order?')"
                               href="{{ route('order.xac_nhan_thanh_toan', $item->id) }}" class="btn btn-info btn-xs"><i
                                    class="fa fa-edit"></i> Paid confirmation.</a>
                        @endif
                        <a href="{{ route('order.get_detail', $item->id) }}" class="btn btn-primary btn-xs"><i
                                class="fa fa-eye"></i> See details</a>
                        <a onclick="return confirm('YAre you sure to delete this product ?')"
                           href="{{ route('order.get_delete', $item->id) }}" class="btn btn-danger btn-xs"><i
                                class="fa fa-trash"></i> Delete</a>

                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        {{ $orders->links() }}
    </div>
@endsection
@section("script")
    <script>
        $(document).ready(function () {
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
    </script>
@endsection
