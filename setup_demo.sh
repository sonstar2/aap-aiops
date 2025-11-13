
#!/bin/bash


ansible-playbook setup_demo/setup_demo.yml -e "aap_hostname=controller.$demo_id.sandbox$sandbox_num.opentlc.com" -e "aap_username=lab-user" -e "aap_password=$passwd" -e "gitea_url=https://bastion.$demo_id.sandbox$sandbox_num.opentlc.com:488" -e "gitea_token=$gitea_token" -e "snow_instance=https://dev280409.service-now.com" -e "snow_username=admin" -e "snow_password=$snow_password" -e "mattermost_instance=http://service1.$demo_id.sandbox$sandbox_num.opentlc.com:8065" -e "mattermost_token=$mattermost_token"
# ansible-playbook setup_demo/setup_demo.yml -e "aap_validate_certs=false" -e "aap_hostname=3.26.3.26" -e "aap_username=admin" -e "aap_password=R3dH4t123!" -e "gitea_url=https://bastion.$demo_id.sandbox$sandbox_num.opentlc.com:488" -e "gitea_token=$gitea_token" -e "snow_instance=https://dev342071.service-now.com" -e "snow_username=admin" -e "snow_password=$snow_password" -e "mattermost_instance=http://service1.$demo_id.sandbox$sandbox_num.opentlc.com:8065" -e "mattermost_token=$mattermost_token"
