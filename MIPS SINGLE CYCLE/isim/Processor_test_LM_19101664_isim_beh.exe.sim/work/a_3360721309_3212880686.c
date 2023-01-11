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
static const char *ng0 = "C:/AAST/Term 6/Computer Architechture/Lab/MIPS_SINGLE_CYCLE_LM_19101664/SignExtend_LM_19101664.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3360721309_3212880686_p_0(char *t0)
{
    char t13[16];
    char t15[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t11;
    char *t12;
    char *t14;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (15 - 15);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)2);
    if (t8 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (15 - 15);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 2672);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(42, ng0);
    t9 = (t0 + 4596);
    t11 = (t0 + 1032U);
    t12 = *((char **)t11);
    t14 = ((IEEE_P_2592010699) + 4024);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 0;
    t17 = (t16 + 4U);
    *((int *)t17) = 15;
    t17 = (t16 + 8U);
    *((int *)t17) = 1;
    t18 = (15 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t19;
    t17 = (t0 + 4540U);
    t11 = xsi_base_array_concat(t11, t13, t14, (char)97, t9, t15, (char)97, t12, t17, (char)101);
    t19 = (16U + 16U);
    t20 = (32U != t19);
    if (t20 == 1)
        goto LAB5;

LAB6:    t21 = (t0 + 2752);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t11, 32U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB3;

LAB5:    xsi_size_not_matching(32U, t19, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(44, ng0);
    t9 = (t0 + 4612);
    t11 = (t0 + 1032U);
    t12 = *((char **)t11);
    t14 = ((IEEE_P_2592010699) + 4024);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 0;
    t17 = (t16 + 4U);
    *((int *)t17) = 15;
    t17 = (t16 + 8U);
    *((int *)t17) = 1;
    t18 = (15 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t19;
    t17 = (t0 + 4540U);
    t11 = xsi_base_array_concat(t11, t13, t14, (char)97, t9, t15, (char)97, t12, t17, (char)101);
    t19 = (16U + 16U);
    t20 = (32U != t19);
    if (t20 == 1)
        goto LAB9;

LAB10:    t21 = (t0 + 2752);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t11, 32U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB3;

LAB9:    xsi_size_not_matching(32U, t19, 0);
    goto LAB10;

}


extern void work_a_3360721309_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3360721309_3212880686_p_0};
	xsi_register_didat("work_a_3360721309_3212880686", "isim/Processor_test_LM_19101664_isim_beh.exe.sim/work/a_3360721309_3212880686.didat");
	xsi_register_executes(pe);
}
