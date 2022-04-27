<footer class="main-footer">
    <div class="pull-right hidden-xs">
        <b>Version</b> 1.0.0
    </div>
    <strong>Copyright &copy; 2022 </strong>
</footer>
<script src="{{ asset("backend/bower_components/jquery/dist/jquery.min.js")}}"></script>
<!-- Bootstrap 3.3.7 -->
<script src="{{ asset("backend/bower_components/bootstrap/dist/js/bootstrap.min.js")}}"></script>
<!-- SlimScroll -->
<script src="{{ asset('backend/bower_components/jquery-slimscroll/jquery.slimscroll.min.js')}}"></script>
<!-- FastClick -->
<!-- AdminLTE App -->
<script src="{{ asset("backend/dist/js/adminlte.min.js")}}"></script>
<script src="{{ asset("backend/bower_components/datatables.net/js/jquery.dataTables.min.js")}}"></script>
<script src="{{ asset("backend/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js")}}"></script>
<!-- AdminLTE for demo purposes -->
@yield("script")
</body>
</html>
