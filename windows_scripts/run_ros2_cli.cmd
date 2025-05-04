echo "============================================Running ros2 help======================================================"

call ros2_help.cmd

echo "============================================Running node discovery==========================================="

call ros2cli_node_discovery.cmd

echo "============================================Running topic discovery==========================================="

call ros2cli_topic_discovery.cmd

echo "============================================Running service discovery==========================================="

call ros2cli_service_discovery.cmd

echo "============================================Running param completion==========================================="

call ros2cli_param_discovery.cmd