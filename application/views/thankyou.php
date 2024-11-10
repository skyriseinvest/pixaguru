<!DOCTYPE html>
<html lang="en">
	<head>
		<title><?php echo html_escape($this->lang->line('ltr_thankyou_page_title')); ?></title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Script fonts (Google Fonts Calling) -->
		<link href="<?php echo base_url(); ?>assets/css/fonts.css" rel="stylesheet">
		<link rel="shortcut icon" type="image/ico" href="<?php echo base_url(); ?>assets/images/favicon.png" />
	  <link rel="icon" type="image/ico" href="<?php echo base_url(); ?>assets/images/favicon.png" />
		<link href="<?php echo base_url(); ?>assets/css/style.css?q=1" rel="stylesheet">
	</head>
  <body>
    <div class="pg-thankyou-page-wrapper">
      <div class="pg-thankyou-container">
          <a href="<?php echo base_url() ?>">
            <?php 
            $userID = $this->session->userdata( 'user_id' );
            $where = array('data_key' =>'pg_logo_image');
            $result_logo = $this->Common_DML->get_data('theme_setting', $where);
            if(isset($result_logo[0]['data_value'])):
            ?>
            <img src="<?php echo base_url().'uploads/logo/'.$result_logo[0]['data_value']; ?>" alt="<?php echo html_escape($this->lang->line('ltr_header_logo_image')); ?>">
            <?php else: ?>                              
                <svg width="152" height="27" viewBox="0 0 152 27" fill="none">
                    <path d="M8.48315 5.27809V6.28022C8.50894 6.43439 8.63786 6.53717 8.79257 6.53717C8.86992 6.53717 8.94728 6.51147 9.02463 6.46008L9.77238 5.84339L9.82395 5.8177L9.90131 5.76631L10.6491 6.48578C10.7522 6.58856 10.9585 6.61426 11.0616 6.48578L12.0414 5.66353L13.047 6.48578C13.1759 6.58856 13.3307 6.58856 13.4596 6.48578L14.2589 5.84339L15.0324 6.48578C15.084 6.53717 15.1614 6.56287 15.2645 6.56287C15.4192 6.56287 15.5481 6.46008 15.5739 6.30591V5.30379C15.5739 5.2524 15.5481 5.20101 15.5223 5.17531L13.9237 2.65716L12.3251 0.139001C12.2993 0.0876097 12.2477 0.0619142 12.1961 0.0362188C12.0672 -0.0408676 11.8867 0.0105233 11.7836 0.139001L10.1849 2.65716L10.1592 2.68285L8.56051 5.20101C8.50894 5.17531 8.48315 5.2267 8.48315 5.27809ZM9.61767 5.17531L10.9069 3.17107V3.14537L10.9327 3.09398H13.0728L13.0986 3.14537L14.3878 5.14962V5.40657L14.0011 5.09822C13.8979 5.02114 13.769 5.02114 13.6659 5.09822L13.0212 5.61213L12.1961 4.91836C12.093 4.84127 11.9641 4.84127 11.8609 4.91836L11.0874 5.61213L10.4686 5.02114C10.3654 4.94405 10.2365 4.94405 10.1334 5.02114L9.64346 5.43227L9.61767 5.17531Z" fill="#FF5887"/>
                    <path d="M29.446 24.8323C29.0077 24.858 28.6467 24.4983 28.6209 24.0615C28.6209 24.0358 28.6209 24.0358 28.6209 24.0101V4.27598C28.5951 4.04472 28.6982 3.83916 28.853 3.68498C29.0077 3.53081 29.2139 3.45373 29.446 3.45373H34.9381C36.1758 3.42803 37.4134 3.73638 38.4964 4.32737C39.5278 4.89267 40.3529 5.74062 40.9201 6.74274C41.5132 7.82195 41.8226 9.05534 41.7968 10.2887C41.8226 11.5221 41.5132 12.7555 40.9201 13.8347C40.3529 14.8625 39.502 15.7105 38.4964 16.2758C37.4134 16.8668 36.1758 17.1751 34.9381 17.1751H30.2711V24.0101C30.2711 24.2157 30.1938 24.4469 30.0648 24.6011C29.9101 24.7553 29.6781 24.8323 29.446 24.8323ZM30.2711 15.5049H34.9381C35.8921 15.5306 36.8204 15.2993 37.6455 14.8368C38.419 14.4 39.0636 13.7576 39.4762 12.9867C39.9403 12.1645 40.1724 11.2138 40.1466 10.2887C40.1724 9.33799 39.9403 8.41295 39.4762 7.59069C39.0379 6.81983 38.3932 6.17744 37.6455 5.74062C36.8204 5.2781 35.8921 5.04684 34.9381 5.07254H30.2711V15.5049Z" class="pg-logo-color"/>
                    <path d="M46.3092 6.71704C45.974 6.71704 45.6388 6.58856 45.4067 6.3573C45.1489 6.12604 45.0199 5.792 45.0457 5.43226C45.0199 5.07253 45.1746 4.71279 45.4325 4.48153C45.6903 4.27597 45.9997 4.17319 46.3349 4.17319C46.6444 4.17319 46.9538 4.27597 47.2116 4.48153C47.4953 4.71279 47.6242 5.07253 47.5984 5.43226C47.6242 6.12604 47.0569 6.69134 46.3607 6.71704C46.3607 6.71704 46.3349 6.71704 46.3092 6.71704ZM46.3349 24.8323C45.8966 24.858 45.5356 24.4983 45.5098 24.0615C45.5098 24.0358 45.5098 24.0358 45.5098 24.0101V10.6741C45.5098 10.4429 45.5872 10.2373 45.7419 10.0831C46.0771 9.80049 46.5928 9.80049 46.928 10.0831C47.0827 10.2373 47.1601 10.4686 47.1601 10.6741V24.0101C47.1601 24.2156 47.0827 24.4469 46.928 24.6011C46.7991 24.7552 46.567 24.8323 46.3349 24.8323Z" class="pg-logo-color"/>
                    <path d="M51.9816 24.8323C51.7753 24.8323 51.5691 24.7552 51.4143 24.6268C51.2596 24.4983 51.1823 24.2927 51.1565 24.0872C51.1307 23.8816 51.2081 23.6503 51.3628 23.4962L56.7002 16.8924L57.6542 18.1001L52.5746 24.5754C52.4199 24.7552 52.1879 24.858 51.9816 24.8323ZM63.0948 24.8323C62.9143 24.8323 62.7338 24.8066 62.5791 24.7038C62.4244 24.6011 62.2696 24.4726 62.1665 24.3184L57.4479 18.0744L56.7518 17.5605L51.9558 11.2394C51.8269 11.0852 51.7495 10.854 51.7495 10.6484C51.7753 10.4429 51.8527 10.2373 52.0074 10.1088C52.1621 9.95465 52.3684 9.87756 52.5746 9.87756C52.8067 9.87756 53.013 9.98034 53.1677 10.1345L57.7573 16.1729L58.5051 16.7383L63.5847 23.4705C63.8167 23.7531 63.9199 24.0101 63.8425 24.2156C63.7909 24.3955 63.662 24.5754 63.5073 24.6781C63.3784 24.7552 63.2237 24.8066 63.0948 24.8323ZM58.1441 17.6633L57.1643 16.4556L62.1665 10.3658C62.2954 10.2116 62.4244 10.0831 62.6048 10.006C62.7338 9.92895 62.8885 9.87756 63.0174 9.87756C63.2237 9.85187 63.4557 9.95465 63.5847 10.1088C63.7136 10.263 63.7909 10.4686 63.7909 10.6484C63.7909 10.854 63.7136 11.0852 63.5589 11.2394L58.1441 17.6633Z" class="pg-logo-color"/>
                    <path d="M73.0218 24.9865C71.6552 25.0122 70.2886 24.6525 69.1025 23.9844C67.9422 23.342 66.9882 22.3913 66.3436 21.235C65.6732 20.053 65.3122 18.6911 65.338 17.3293C65.3122 15.9674 65.6732 14.6056 66.3436 13.3979C66.9882 12.2416 67.9422 11.3165 69.1025 10.6485C71.552 9.31229 74.5173 9.31229 76.9668 10.6485C78.1013 11.2908 79.0554 12.2416 79.7 13.3979C80.3704 14.6056 80.7313 15.9417 80.7056 17.3293L80.0094 18.4342C80.0352 19.6162 79.7 20.7725 79.0811 21.7746C78.4623 22.751 77.6114 23.5733 76.6058 24.1129C75.4971 24.7296 74.2852 25.0122 73.0218 24.9865ZM73.0218 23.4448C75.1877 23.4962 77.1989 22.3399 78.256 20.4641C78.7717 19.5134 79.0554 18.4342 79.0296 17.355C79.0554 16.2501 78.7717 15.1709 78.256 14.2201C77.7403 13.3208 77.0184 12.5499 76.1159 12.036C73.228 10.3401 69.5151 11.2908 67.8133 14.1687C67.8133 14.1944 67.7875 14.2201 67.7875 14.2201C67.246 15.1709 66.9624 16.2501 66.9882 17.355C66.9624 18.4342 67.246 19.5134 67.7875 20.4641C68.8447 22.3399 70.8559 23.4705 73.0218 23.4448ZM79.8805 24.8067C79.6484 24.8067 79.4163 24.7296 79.2616 24.5754C79.1069 24.4212 79.0296 24.2157 79.0296 23.9844V18.9995L79.5453 17.355H80.6798V24.0101C80.6798 24.2157 80.6024 24.4469 80.4477 24.6011C80.3188 24.7553 80.1125 24.8323 79.8805 24.8067Z" class="pg-logo-color"/>
                    <path d="M94.681 25.0893C91.8447 25.115 89.1115 23.9844 87.1519 21.9288C86.172 20.9266 85.4243 19.7446 84.9086 18.4342C84.3671 17.0466 84.0835 15.582 84.1093 14.1173C84.0835 12.6527 84.3671 11.1881 84.9086 9.8262C85.4243 8.54143 86.1978 7.35944 87.1519 6.35732C88.1059 5.38089 89.2404 4.58433 90.5038 4.01903C91.8189 3.45373 93.237 3.14538 94.681 3.17108C95.9186 3.14538 97.1563 3.32525 98.3166 3.71068C99.4253 4.12181 100.457 4.7385 101.385 5.50937C101.514 5.58645 101.643 5.71493 101.746 5.84341C101.823 5.94619 101.875 6.07467 101.901 6.20314C101.926 6.33162 101.952 6.48579 101.952 6.61427C101.952 6.94831 101.823 7.25666 101.591 7.48792C101.359 7.71918 101.024 7.87335 100.689 7.89904C100.328 7.92474 99.9668 7.79626 99.6832 7.53931C99.0643 6.9997 98.3424 6.53718 97.5946 6.20314C96.6664 5.8691 95.7123 5.68923 94.7325 5.74063C93.6753 5.74063 92.644 5.94619 91.6899 6.38301C90.7359 6.81983 89.885 7.43653 89.1888 8.18169C88.4669 8.95256 87.8738 9.8519 87.5128 10.854C86.7135 12.961 86.7135 15.2736 87.5128 17.3807C87.8996 18.3571 88.4669 19.2821 89.1888 20.053C89.9108 20.8239 90.7617 21.4149 91.6899 21.8517C93.4949 22.6482 95.5318 22.6996 97.3883 22.0059C98.2392 21.6718 99.0643 21.235 99.7863 20.6697C100.07 20.4384 100.405 20.3356 100.766 20.3613C101.076 20.387 101.359 20.5155 101.565 20.7468C101.797 21.0037 101.901 21.3378 101.875 21.6718C101.875 21.8517 101.849 22.0315 101.772 22.2114C101.694 22.3913 101.591 22.5712 101.437 22.6996C100.508 23.4962 99.4253 24.0872 98.2908 24.4983C97.1047 24.9094 95.8928 25.0893 94.681 25.0893ZM101.849 21.6975L99.1159 21.1579V16.2501H95.3513C94.9904 16.2501 94.6294 16.1473 94.3457 15.8903C93.8558 15.4535 93.8043 14.7083 94.2426 14.1944C94.2684 14.143 94.32 14.1173 94.3457 14.0917C94.6294 13.8604 94.9904 13.7319 95.3513 13.7319H100.482C100.869 13.7062 101.23 13.8604 101.488 14.1173C101.746 14.4 101.875 14.7597 101.875 15.1452L101.849 21.6975Z" fill="#FF5887"/>
                    <path d="M112.446 24.9608C111.26 24.9865 110.1 24.7039 109.069 24.1643C108.063 23.6247 107.238 22.8024 106.696 21.8003C106.129 20.7468 105.82 19.4877 105.82 17.9717V11.2138C105.82 10.4429 106.439 9.8262 107.212 9.8262C107.986 9.8262 108.605 10.4429 108.605 11.2138V17.946C108.579 18.8196 108.759 19.6933 109.172 20.4641C109.533 21.1065 110.074 21.6204 110.745 21.9545C111.441 22.2885 112.189 22.4427 112.962 22.4427C113.684 22.4684 114.406 22.2885 115.051 21.9802C115.644 21.6975 116.134 21.2607 116.52 20.7211C116.881 20.2072 117.088 19.5905 117.062 18.9481H118.789C118.815 20.0273 118.506 21.0808 117.964 22.0058C117.423 22.9052 116.624 23.6504 115.695 24.1643C114.741 24.7039 113.607 24.9865 112.446 24.9608ZM118.532 24.8323C117.784 24.858 117.165 24.267 117.139 23.5219C117.139 23.4962 117.139 23.4705 117.139 23.4448V11.2138C117.113 10.8283 117.268 10.4686 117.526 10.2116C118.067 9.64633 118.944 9.64633 119.486 10.1602C119.769 10.4429 119.924 10.8283 119.924 11.2138V23.4191C119.924 23.7788 119.795 24.1386 119.537 24.4212C119.279 24.7039 118.893 24.8323 118.532 24.8323Z" fill="#FF5887"/>
                    <path d="M126.241 24.8323C125.88 24.858 125.494 24.7295 125.236 24.4983C124.978 24.2156 124.849 23.8559 124.875 23.4705V11.2137C124.797 10.5199 125.287 9.92895 125.983 9.85187C126.061 9.85187 126.164 9.85187 126.241 9.85187C126.628 9.82617 126.989 9.95465 127.273 10.1859C127.531 10.4686 127.659 10.8283 127.608 11.2137V23.4448C127.634 23.8045 127.505 24.1899 127.273 24.4469C126.989 24.7295 126.628 24.858 126.241 24.8323ZM126.216 15.4535C126.19 14.4257 126.473 13.3978 127.015 12.4985C127.556 11.6505 128.304 10.9311 129.207 10.4429C130.135 9.92895 131.166 9.672 132.223 9.672C133.332 9.672 134.131 9.85187 134.673 10.2116C135.214 10.5713 135.421 10.9825 135.292 11.4964C135.266 11.7276 135.137 11.9332 134.982 12.0874C134.828 12.2158 134.647 12.3186 134.441 12.3443C134.235 12.37 134.002 12.37 133.796 12.3186C132.765 12.0874 131.682 12.0617 130.65 12.2672C129.825 12.4214 129.052 12.8068 128.433 13.3978C127.892 13.9631 127.608 14.7083 127.634 15.4792L126.216 15.4535Z" fill="#FF5887"/>
                    <path d="M144.522 24.9608C143.336 24.9865 142.176 24.7039 141.119 24.1643C140.113 23.6247 139.288 22.8024 138.747 21.8003C138.179 20.7468 137.896 19.4877 137.896 17.9717V11.2138C137.896 10.4429 138.515 9.8262 139.288 9.8262C140.062 9.8262 140.68 10.4429 140.68 11.2138V17.946C140.655 18.8196 140.861 19.6933 141.274 20.4641C141.635 21.1065 142.176 21.6204 142.821 21.9545C143.517 22.2885 144.265 22.4427 145.038 22.4427C145.76 22.4684 146.482 22.2885 147.152 21.9802C147.745 21.6975 148.235 21.2607 148.622 20.7211C148.983 20.2072 149.164 19.5905 149.164 18.9481H150.891C150.917 20.0273 150.608 21.0808 150.066 22.0058C149.499 22.9052 148.725 23.6504 147.797 24.1643C146.791 24.7039 145.657 24.9865 144.522 24.9608ZM150.608 24.8323C149.86 24.858 149.215 24.267 149.215 23.5219C149.215 23.4962 149.215 23.4705 149.215 23.4448V11.2138C149.189 10.8283 149.344 10.4686 149.602 10.2116C150.143 9.64633 151.02 9.64633 151.562 10.1602C151.845 10.4429 152 10.8283 152 11.2138V23.4191C152 23.7788 151.871 24.1386 151.613 24.4212C151.355 24.7039 150.969 24.8323 150.608 24.8323Z" fill="#FF5887"/>
                    <path d="M13.4338 25.9629H13.8206C14.0785 25.9629 14.3105 25.9372 14.5684 25.9372C14.8262 25.9372 15.0583 25.9115 15.3161 25.8858C15.574 25.8601 15.806 25.8345 16.0639 25.8088C16.3217 25.7831 16.5538 25.7317 16.7858 25.706C17.0179 25.6803 17.2757 25.6032 17.5078 25.5518C17.7399 25.5004 17.9719 25.449 18.204 25.3719C18.436 25.2948 18.6681 25.2178 18.8744 25.1407C19.0807 25.0636 19.3127 24.9608 19.5448 24.8837C19.7768 24.8066 19.9573 24.6782 20.1636 24.5754C20.3699 24.4726 20.5504 24.3441 20.7567 24.2156L20.8856 24.1129C20.9371 24.0872 20.9629 24.0358 21.0145 24.0101L21.0919 23.9587L21.1692 23.9073C21.2208 23.8816 21.2466 23.8302 21.2981 23.8045C21.4786 23.6503 21.6333 23.4962 21.788 23.3163C21.9427 23.1364 22.0974 22.9566 22.2264 22.7767L22.4069 22.5197L22.3553 22.4683L22.2264 22.3142L22.0717 22.1857C21.9685 22.1086 21.8654 22.0315 21.7623 21.9544L21.6075 21.826C21.556 21.7746 21.5044 21.7489 21.4528 21.7232L21.2981 21.6204L21.1176 21.5176C21.0145 21.4405 20.8856 21.3634 20.7824 21.3121C20.6793 21.2607 20.5504 21.1836 20.4215 21.1065L20.0605 20.9009C20.0089 20.8752 19.9315 20.8495 19.88 20.7981L19.6995 20.7211L19.519 20.644C19.4674 20.6183 19.3901 20.5926 19.3385 20.5669L18.9775 20.387C18.8486 20.3356 18.7197 20.2842 18.5907 20.2328L18.4103 20.1558L18.3071 20.1301L18.204 20.1044L17.7914 19.8988L17.6883 19.8731C17.6625 19.8731 17.6367 19.8474 17.5852 19.8474L17.3789 19.796L16.9663 19.6675C17.121 19.6675 17.25 19.6675 17.3789 19.6675C17.5078 19.6675 17.6625 19.6675 17.8172 19.6932L18.2298 19.7446C18.3845 19.7446 18.5134 19.796 18.6423 19.796C18.7712 19.796 18.9259 19.8474 19.0549 19.8731L19.4674 19.9759L19.6737 20.0273L19.88 20.0787L20.0863 20.1301C20.1636 20.1558 20.2152 20.1815 20.2925 20.2071L20.7051 20.3613C20.834 20.4127 20.9629 20.4641 21.1176 20.5412C21.195 20.5669 21.2466 20.5926 21.3239 20.644L21.5302 20.7468C21.5818 20.7724 21.6591 20.7981 21.7365 20.8495L21.917 20.9523C22.0459 21.0294 22.1748 21.1065 22.3037 21.1579C22.4326 21.2093 22.5616 21.3121 22.6647 21.3891C22.7163 21.4405 22.7936 21.4662 22.8452 21.5176C22.8968 21.569 22.9741 21.5947 23.0257 21.6461C23.0773 21.6975 23.1288 21.7232 23.2062 21.8003L23.2835 21.8774L23.3867 21.9544L23.6445 22.2114L23.4898 22.5711C23.3609 22.8281 23.232 23.0593 23.0773 23.2906C22.9226 23.5219 22.7678 23.7531 22.5874 23.9587C22.4069 24.1642 22.2264 24.3698 22.0201 24.5497C21.8138 24.7295 21.6075 24.9094 21.3755 25.0636C21.1434 25.2178 20.9114 25.3719 20.6793 25.5004C20.4472 25.6289 20.1894 25.7317 19.9573 25.8345C19.6995 25.9372 19.4674 26.04 19.2096 26.1171C18.9517 26.1942 18.6939 26.2713 18.436 26.3227C18.1782 26.3741 17.9204 26.4254 17.6625 26.4511C17.4047 26.4768 17.1468 26.5025 16.889 26.5282C16.6311 26.5539 16.3733 26.5539 16.1154 26.5539C15.8576 26.5539 15.5997 26.5539 15.3419 26.5282C15.084 26.5025 14.8262 26.5025 14.5684 26.4511C14.3105 26.3998 14.0527 26.3998 13.7948 26.3484C13.6659 26.3227 13.537 26.297 13.4081 26.2713L13.0213 26.1685C12.7634 26.1171 12.5314 26.04 12.2993 25.9629C12.5572 25.9629 12.815 25.9629 13.0729 25.9629H13.4338Z" fill="#FF5887"/>
                    <path d="M12.093 7.41083C12.0156 7.46222 11.9125 7.53931 11.8351 7.5907L11.5515 7.77056L11.2679 7.95043C11.1647 8.00182 11.0874 8.07891 10.9842 8.1303C10.5975 8.38725 10.2365 8.6699 9.90127 8.97825C9.17931 9.59494 8.56048 10.2887 8.07057 11.0596C7.81272 11.445 7.58066 11.8818 7.40017 12.3187C7.21968 12.7555 7.06497 13.1923 6.96183 13.6548C6.75556 14.5799 6.72977 15.5563 6.88448 16.507C6.91026 16.7383 6.98762 16.9695 7.03919 17.2008C7.06497 17.3036 7.09076 17.4321 7.14232 17.5348L7.19389 17.7147L7.24546 17.8946C7.40017 18.3314 7.58066 18.7682 7.81272 19.1793C8.019 19.5905 8.27684 20.0016 8.53469 20.387C8.74097 20.6697 8.97303 20.9523 9.1793 21.235C9.07617 21.1836 8.97303 21.1322 8.84411 21.0808C8.58626 20.978 8.32841 20.8752 8.07057 20.7725C7.81272 20.6697 7.55488 20.5926 7.27125 20.5412C7.0134 20.4898 6.72977 20.4384 6.47193 20.387C6.1883 20.3613 5.93045 20.3613 5.64682 20.3613C5.36319 20.3613 5.07956 20.387 4.82171 20.4384C4.69279 20.4641 4.53808 20.4898 4.40916 20.5155C4.28024 20.5412 4.12553 20.5926 3.99661 20.6183C3.86768 20.6697 3.71298 20.6954 3.58405 20.7468C3.45513 20.7982 3.32621 20.8496 3.19729 20.9009C3.06836 20.9523 2.93944 21.0294 2.81052 21.0808C2.75895 21.1065 2.68159 21.1579 2.63003 21.1836L2.52689 21.235L2.44953 21.2864C2.19169 21.4405 1.95963 21.6204 1.72757 21.8003C1.62443 21.9031 1.4955 21.9802 1.39237 22.0829L1.21187 22.2371L1.05717 22.3913C0.850891 22.5968 0.644614 22.8281 0.438338 23.0594L0 23.5733L0.489907 24.0358L0.541476 24.0872L0.593045 24.1386L0.670399 24.2157C0.721968 24.267 0.773537 24.3184 0.850891 24.3441C0.954029 24.4212 1.08295 24.524 1.18609 24.6011L1.36658 24.7296L1.54707 24.8323L1.72757 24.9351L1.90806 25.0379C2.03698 25.115 2.14012 25.1664 2.26904 25.2435C2.39796 25.3206 2.52689 25.372 2.63003 25.4233C2.73316 25.4747 2.88787 25.5261 2.99101 25.6032L3.1715 25.6803L3.27464 25.7317L3.37778 25.7574C3.63562 25.8602 3.89347 25.9373 4.15131 25.9886C4.28024 26.0143 4.40916 26.0657 4.53808 26.0914C4.66701 26.1171 4.79593 26.1428 4.92485 26.1685L5.31162 26.2199C5.44054 26.2456 5.56947 26.2456 5.69839 26.2456H5.80153H6.29143H6.49771H6.70399H6.80712L6.91026 26.2199L7.29703 26.1685C7.55488 26.1171 7.81272 26.0914 8.07057 26.0143L8.25106 25.9629L8.3542 25.9373L8.45734 25.9116L8.84411 25.7831C8.89567 25.7574 8.97303 25.7317 9.0246 25.706L9.20509 25.6289C9.33401 25.5775 9.46293 25.5261 9.56607 25.4747L9.92706 25.2949C9.97863 25.2692 10.056 25.2435 10.1075 25.1921L10.288 25.0893L10.4685 24.9865C10.5201 24.9608 10.5975 24.9094 10.649 24.8837L10.9842 24.6525L11.1389 24.524L11.2936 24.3955L11.6288 24.1386C11.6804 24.0872 11.732 24.0615 11.7835 24.0101L11.9383 23.8816L12.1187 23.7017C12.686 24.0872 13.3306 24.3955 13.9752 24.6268C10.8553 22.3142 8.89567 18.6654 8.89567 18.6654C8.71518 18.3057 8.53469 17.9203 8.40577 17.5348L8.3542 17.3807L8.30263 17.2265C8.27684 17.1237 8.25106 17.0209 8.22528 16.9181C8.17371 16.7126 8.12214 16.5327 8.09635 16.3272C8.019 15.916 7.99321 15.5306 7.99321 15.1195C7.99321 14.7083 8.04478 14.3229 8.12214 13.9118C8.27684 13.1152 8.58626 12.3444 9.0246 11.6506C9.23087 11.2908 9.48872 10.9568 9.74656 10.6485C10.0044 10.3401 10.3138 10.0318 10.6232 9.74911C10.9327 9.46646 11.2679 9.18381 11.6031 8.92686C11.6804 8.87547 11.7835 8.79838 11.8609 8.74699L11.964 8.66991C12.0156 8.7213 12.0672 8.74699 12.1445 8.79838L12.4539 9.02964L12.6087 9.15812C12.6602 9.20951 12.7118 9.2352 12.7634 9.2866L13.047 9.51786C13.1501 9.59494 13.2533 9.67203 13.3306 9.74911C13.7174 10.0575 14.0784 10.4172 14.4136 10.7769C14.7488 11.1367 15.0324 11.5478 15.2902 11.9589C15.5481 12.3701 15.7544 12.8069 15.9091 13.2694C16.0638 13.7319 16.1669 14.1944 16.1669 14.6569C16.1927 15.1195 16.1411 15.6077 16.038 16.0702C15.9349 16.5327 15.7544 16.9952 15.5223 17.4321C15.2902 17.8689 15.0324 18.28 14.6972 18.6654C14.4651 18.9481 14.2073 19.2307 13.9494 19.4877L13.9237 19.3335C13.8979 19.2821 13.8463 19.2307 13.8205 19.1793C13.7432 19.0766 13.6916 18.9738 13.6142 18.871L13.5111 18.7168L13.4338 18.5627L13.3564 18.4085L13.2791 18.2543L13.2017 18.1001C13.1759 18.0487 13.1501 17.9974 13.1243 17.9203L13.047 17.7404L12.9696 17.689C12.9696 17.6633 12.9439 17.6376 12.9439 17.6119L12.8149 17.2779C12.7634 17.1751 12.7376 17.0466 12.686 16.9181C12.6602 16.8668 12.6344 16.7897 12.6344 16.7383L12.5829 16.5584C12.5571 16.4299 12.5055 16.3272 12.4797 16.1987L12.4024 15.8389L12.3508 15.6334C12.3508 15.582 12.325 15.5049 12.325 15.4535L12.2735 15.0681C12.2735 15.0167 12.2477 14.9396 12.2477 14.8882L12.2219 14.7083C12.1961 14.5799 12.1961 14.4514 12.1703 14.3229C12.1703 14.4514 12.1445 14.5799 12.1445 14.7083V14.9139C12.1445 14.9653 12.1445 15.0424 12.1445 15.0938C12.1445 15.2222 12.1445 15.3507 12.1445 15.4792C12.1445 15.5306 12.1445 15.6077 12.1445 15.6848V15.8646L12.1703 16.2501C12.1961 16.3785 12.1961 16.507 12.2219 16.6355L12.2477 16.8411C12.2477 16.8925 12.2735 16.9695 12.2735 17.0209C12.2992 17.1494 12.325 17.2779 12.3508 17.4064L12.4539 17.7918C12.4539 17.8175 12.4797 17.8432 12.4797 17.8946L12.5055 17.9974L12.5571 18.1772C12.5829 18.2286 12.6087 18.3057 12.6087 18.3571L12.686 18.537L12.7634 18.7168L12.8407 18.8967L12.9181 19.0766L12.9954 19.2564C13.047 19.3849 13.1243 19.4877 13.1759 19.6162C13.2017 19.6676 13.2533 19.719 13.2791 19.796C13.3048 19.8731 13.3564 19.8988 13.3822 19.9759C13.408 20.053 13.4595 20.0787 13.5111 20.1558L13.5627 20.2329L13.64 20.3356L13.8721 20.6183L14.1815 20.3613C14.6198 20.0273 15.0324 19.6419 15.4192 19.2564L15.7028 18.9481L15.9606 18.614C16.1411 18.3828 16.2958 18.1515 16.4248 17.9203C16.7084 17.4321 16.9405 16.8925 17.0952 16.3272C17.2499 15.7619 17.3272 15.1709 17.3014 14.6056C17.2757 14.0146 17.1725 13.4493 17.0178 12.9097C16.8373 12.3701 16.6053 11.8304 16.2958 11.3422C15.9864 10.854 15.6512 10.4172 15.2645 9.98037L14.9808 9.67203C14.8777 9.56925 14.7746 9.46646 14.6714 9.38938C14.5683 9.31229 14.4651 9.20951 14.362 9.10673L14.2073 8.97825L14.0526 8.84977C13.9494 8.77269 13.8463 8.6699 13.7174 8.59282L13.3822 8.33586C13.3306 8.28447 13.2791 8.25878 13.2017 8.23308L13.047 8.1303L12.7118 7.89904C12.4797 7.66778 12.2992 7.5393 12.093 7.41083ZM1.72757 23.4448L1.70178 23.4191L1.75335 23.3677L1.88227 23.2392L2.03698 23.1108C2.14012 23.0337 2.24326 22.9309 2.32061 22.8538C2.52689 22.6996 2.73316 22.5455 2.93944 22.3913L3.01679 22.3399L3.09415 22.2885L3.24886 22.1857C3.35199 22.1343 3.45513 22.0572 3.58405 22.0058C3.71298 21.9545 3.81612 21.9031 3.91925 21.8517C4.02239 21.8003 4.15131 21.7489 4.25445 21.7232C4.48651 21.6461 4.71858 21.5947 4.95064 21.5433C5.1827 21.4919 5.44054 21.4405 5.6726 21.4405C5.90466 21.4149 6.16251 21.3892 6.42036 21.3892C6.6782 21.3892 6.91026 21.4149 7.16811 21.4405C7.42595 21.4662 7.65802 21.5176 7.91586 21.569C8.17371 21.6204 8.40577 21.6975 8.66361 21.7746C8.92146 21.8517 9.15352 21.9288 9.38558 22.0315C9.79813 22.2114 10.2107 22.3913 10.6232 22.5968C11.0874 22.9566 11.5515 23.3163 12.0414 23.6247C11.8609 23.7274 11.6804 23.8302 11.4999 23.933L11.1647 24.1129L10.9842 24.19L10.8295 24.267L10.4685 24.4212C10.417 24.4469 10.3396 24.4726 10.288 24.4983L10.1075 24.5754L9.92706 24.6525C9.87549 24.6782 9.79813 24.7039 9.74656 24.7039L9.38558 24.8067C9.25666 24.858 9.15352 24.8837 9.0246 24.9094L8.84411 24.9608C8.79254 24.9865 8.71518 24.9865 8.66361 25.0122L8.30263 25.0893L8.22528 25.115L8.12214 25.1407H7.96743L7.78694 25.1664C7.73537 25.1664 7.65802 25.1664 7.60645 25.1921C7.47752 25.1921 7.37439 25.2178 7.24546 25.2178H6.88448H6.78134H6.6782H6.49771H6.31722L6.13673 25.1921L5.95623 25.1664H5.8531H5.74996L5.41476 25.0636L5.05377 24.9865L4.69279 24.8837C4.64122 24.8837 4.56387 24.858 4.5123 24.8323L4.33181 24.781C4.09975 24.7039 3.86768 24.6268 3.63562 24.524C3.40356 24.4212 3.1715 24.3184 2.96522 24.2157L2.63003 24.0358C2.52689 23.9844 2.42375 23.9073 2.32061 23.8302C2.14012 23.7274 1.93384 23.599 1.72757 23.4448Z" fill="#FF5887"/>
                </svg>
            <?php endif; ?>
          </a>
          <img class="pg-thankyou" src="<?php echo base_url(); ?>assets/images/thank-you.png" alt="" />
            <?php if(!empty($price)) { ?>
              <h3><?php echo html_escape($this->lang->line('ltr_thankyou_section_title')); ?> <?php echo html_escape($cur).html_escape($price);?></h3>
            <?php } ?>
            <div class="pg-thankyou-content">
              <p>
                <strong><?php echo html_escape($this->lang->line('ltr_thankyou_desc_strong_text')); ?> </strong> <?php echo html_escape($this->lang->line('ltr_thankyou_desc_text')); ?>
              </p>
            </div>
            <div class="pg-btn-wrap">
              <a class="pg-btn" href="<?php print site_url();?>" role="button"><?php echo html_escape($this->lang->line('ltr_thankyou_btn_text')); ?></a>
            </div>
        </div>
    </div>
  </body>
</html>