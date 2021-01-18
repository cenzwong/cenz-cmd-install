wget https://registrationcenter-download.intel.com/akdlm/irc_nas/17504/l_openvino_toolkit_p_2021.2.185.tgz


The following steps apply to Ubuntu*, CentOS*, Red Hat* Enterprise Linux*, and Yocto* versions of Linux.

Step 1: Open a command prompt terminal window.

Step 2: Unpack the .tgz file.

tar -xvzf 1_openvino_toolkit_p_<version>.tgz

Step 3: Go to the l_openvino_toolkit_p_<version> directory:

cd 1_openvino_toolkit_p_<version>

Step 4: Choose your installation option.

sudo -E ./install_openvino_dependencies.sh 

GUI Installation Wizard: sudo ./install_GUI.sh
Command-Line Instructions: sudo ./install.sh
Step 5: Follow the instructions in the installer.

Step 6: The core components are installed. To complete the configuration, follow the instructions in the Complete Installation Guide.

# https://software.intel.com/content/www/us/en/develop/tools/openvino-toolkit/download.html#operatingsystem=Linux&#distributions=Web%20&%20Local%20(recommended)&#options=Online
