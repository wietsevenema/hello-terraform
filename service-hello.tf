resource google_cloud_run_service "hello" {
  name     = "hello-terraform"
  location = "us-central1"

  template {
    spec {
      containers {
        image = "gcr.io/cloud-run-book/inspect"
      }
    }
  }
}

# data google_iam_policy "run_invoke_all_users" {
#   binding {
#     role = "roles/run.invoker"
#     members = [
#       "allUsers",
#     ]
#   }
# }

# resource google_cloud_run_service_iam_policy "hello_all_users" {
#   service     = google_cloud_run_service.hello.name
#   location    = google_cloud_run_service.hello.location
#   policy_data = data.google_iam_policy.run_invoke_all_users.policy_data
# }