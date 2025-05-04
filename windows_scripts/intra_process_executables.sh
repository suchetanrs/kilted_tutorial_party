run_group() {
  local desc="$1"; shift
  local exes=("$@")
  echo
  echo "==================================== Group: $desc ======================================="
  echo "==========================================================================="
  echo "==========================================================================="
  echo "==========================================================================="
  echo "==========================================================================="
  pids=()
  for exe in "${exes[@]}"; do
    echo "launching: $exe"
    ros2 run intra_process_demo "$exe" &  
    pids+=($!)
  done
  echo
  read -rp "Press…"
  kill "${pids[@]}" 2>/dev/null
  wait "${pids[@]}" 2>/dev/null
}

run_group "two_node_pipeline" \
  two_node_pipeline

run_group "cyclic_pipeline" \
  cyclic_pipeline

run_group "image_pipeline_all_in_one" \
  image_pipeline_all_in_one

run_group "all separately" \
  camera_node \
  watermark_node \
  image_view_node

run_group "two image views" \
  image_pipeline_with_two_image_view

echo
