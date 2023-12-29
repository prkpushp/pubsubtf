provider "google" {
  credentials = file("/Users/pushparanjan.karn/Library/CloudStorage/OneDrive-UKG/Cloud.Windows/GIT HUB Projects/pushp.json")
  project     = "meta-territory-393217"
  region      = "us-central1" # Change to your desired region
}

module "multiple_pubsub_topics" {
  source = "./modules/pubsub-topic"
  topic_names = [
    for i in range(1, 101) : "topic-${i}"
  ]
}