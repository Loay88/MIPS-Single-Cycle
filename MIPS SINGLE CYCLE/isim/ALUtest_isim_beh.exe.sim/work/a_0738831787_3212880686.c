/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/MIPS_SINGLE_CYCLE_LM_19101664/ALU_LM_19101664.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_2110339434_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1306069469_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_0738831787_3212880686_p_0(char *t0)
{
    char t12[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5064U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 5080U);
    t5 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t2, t1, t4, t3);
    if (t5 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 3232);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5204);
    t5 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t5 = 0;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5208);
    t5 = 1;
    if (4U == 4U)
        goto LAB18;

LAB19:    t5 = 0;

LAB20:    if (t5 != 0)
        goto LAB16;

LAB17:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5212);
    t5 = 1;
    if (4U == 4U)
        goto LAB28;

LAB29:    t5 = 0;

LAB30:    if (t5 != 0)
        goto LAB26;

LAB27:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5216);
    t5 = 1;
    if (4U == 4U)
        goto LAB36;

LAB37:    t5 = 0;

LAB38:    if (t5 != 0)
        goto LAB34;

LAB35:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5220);
    t5 = 1;
    if (4U == 4U)
        goto LAB44;

LAB45:    t5 = 0;

LAB46:    if (t5 != 0)
        goto LAB42;

LAB43:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5288);
    t5 = 1;
    if (4U == 4U)
        goto LAB55;

LAB56:    t5 = 0;

LAB57:    if (t5 != 0)
        goto LAB53;

LAB54:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 5292);
    t3 = (t0 + 3296);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);

LAB6:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t6 = (t0 + 3232);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(52, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t7 = (t0 + 5064U);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t9 = (t0 + 5080U);
    t13 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t12, t8, t7, t10, t9);
    t14 = (t12 + 12U);
    t15 = *((unsigned int *)t14);
    t16 = (1U * t15);
    t17 = (32U != t16);
    if (t17 == 1)
        goto LAB14;

LAB15:    t18 = (t0 + 3296);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 32U);
    xsi_driver_first_trans_fast_port(t18);
    goto LAB6;

LAB8:    t11 = 0;

LAB11:    if (t11 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t4 = (t2 + t11);
    t6 = (t1 + t11);
    if (*((unsigned char *)t4) != *((unsigned char *)t6))
        goto LAB9;

LAB13:    t11 = (t11 + 1);
    goto LAB11;

LAB14:    xsi_size_not_matching(32U, t16, 0);
    goto LAB15;

LAB16:    xsi_set_current_line(54, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t7 = (t0 + 5064U);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t9 = (t0 + 5080U);
    t13 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t12, t8, t7, t10, t9);
    t14 = (t12 + 12U);
    t15 = *((unsigned int *)t14);
    t16 = (1U * t15);
    t17 = (32U != t16);
    if (t17 == 1)
        goto LAB24;

LAB25:    t18 = (t0 + 3296);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 32U);
    xsi_driver_first_trans_fast_port(t18);
    goto LAB6;

LAB18:    t11 = 0;

LAB21:    if (t11 < 4U)
        goto LAB22;
    else
        goto LAB20;

LAB22:    t4 = (t2 + t11);
    t6 = (t1 + t11);
    if (*((unsigned char *)t4) != *((unsigned char *)t6))
        goto LAB19;

LAB23:    t11 = (t11 + 1);
    goto LAB21;

LAB24:    xsi_size_not_matching(32U, t16, 0);
    goto LAB25;

LAB26:    xsi_set_current_line(56, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t7 = (t0 + 5064U);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t9 = (t0 + 5080U);
    t13 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t12, t8, t7, t10, t9);
    t14 = (t0 + 3296);
    t18 = (t14 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t13, 32U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB6;

LAB28:    t11 = 0;

LAB31:    if (t11 < 4U)
        goto LAB32;
    else
        goto LAB30;

LAB32:    t4 = (t2 + t11);
    t6 = (t1 + t11);
    if (*((unsigned char *)t4) != *((unsigned char *)t6))
        goto LAB29;

LAB33:    t11 = (t11 + 1);
    goto LAB31;

LAB34:    xsi_set_current_line(58, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t7 = (t0 + 5064U);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t9 = (t0 + 5080U);
    t13 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t12, t8, t7, t10, t9);
    t14 = (t0 + 3296);
    t18 = (t14 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t13, 32U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB6;

LAB36:    t11 = 0;

LAB39:    if (t11 < 4U)
        goto LAB40;
    else
        goto LAB38;

LAB40:    t4 = (t2 + t11);
    t6 = (t1 + t11);
    if (*((unsigned char *)t4) != *((unsigned char *)t6))
        goto LAB37;

LAB41:    t11 = (t11 + 1);
    goto LAB39;

LAB42:    xsi_set_current_line(60, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t7 = (t0 + 5064U);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t9 = (t0 + 5080U);
    t17 = ieee_p_1242562249_sub_2110339434_1035706684(IEEE_P_1242562249, t8, t7, t10, t9);
    if (t17 != 0)
        goto LAB50;

LAB52:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 5256);
    t3 = (t0 + 3296);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);

LAB51:    goto LAB6;

LAB44:    t11 = 0;

LAB47:    if (t11 < 4U)
        goto LAB48;
    else
        goto LAB46;

LAB48:    t4 = (t2 + t11);
    t6 = (t1 + t11);
    if (*((unsigned char *)t4) != *((unsigned char *)t6))
        goto LAB45;

LAB49:    t11 = (t11 + 1);
    goto LAB47;

LAB50:    xsi_set_current_line(60, ng0);
    t13 = (t0 + 5224);
    t18 = (t0 + 3296);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 32U);
    xsi_driver_first_trans_fast_port(t18);
    goto LAB51;

LAB53:    xsi_set_current_line(64, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t7 = (t0 + 5064U);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t9 = (t0 + 5080U);
    t13 = ieee_p_2592010699_sub_1306069469_503743352(IEEE_P_2592010699, t12, t8, t7, t10, t9);
    t14 = (t12 + 12U);
    t15 = *((unsigned int *)t14);
    t16 = (1U * t15);
    t17 = (32U != t16);
    if (t17 == 1)
        goto LAB61;

LAB62:    t18 = (t0 + 3296);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 32U);
    xsi_driver_first_trans_fast_port(t18);
    goto LAB6;

LAB55:    t11 = 0;

LAB58:    if (t11 < 4U)
        goto LAB59;
    else
        goto LAB57;

LAB59:    t4 = (t2 + t11);
    t6 = (t1 + t11);
    if (*((unsigned char *)t4) != *((unsigned char *)t6))
        goto LAB56;

LAB60:    t11 = (t11 + 1);
    goto LAB58;

LAB61:    xsi_size_not_matching(32U, t16, 0);
    goto LAB62;

}


extern void work_a_0738831787_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0738831787_3212880686_p_0};
	xsi_register_didat("work_a_0738831787_3212880686", "isim/ALUtest_isim_beh.exe.sim/work/a_0738831787_3212880686.didat");
	xsi_register_executes(pe);
}
