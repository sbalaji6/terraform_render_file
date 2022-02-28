


resource "local_file" "foo" {
    content     = data.template_file.userdata.rendered
    filename = "foo.bar"
}



resource "local_file" "create-emr-virtual-cluster-request-json" {
  content = templatefile("${path.module}/sample_script.sh", {
    input_var = "Balaji"
  })
  filename        = "${path.module}/sample_script_rendered.sh"
  file_permission = "0600"
}
