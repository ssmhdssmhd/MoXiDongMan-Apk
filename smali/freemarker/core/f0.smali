.class Lfreemarker/core/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final case:I = 0x6

.field public static final do:I = 0x1

.field private static final else:Ljava/lang/String; = "value of the comparison is a date-like value where it\'s not known if it\'s a date (no time part), time, or date-time, and thus can\'t be used in a comparison."

.field public static final for:I = 0x3

.field public static final if:I = 0x2

.field public static final new:I = 0x4

.field public static final try:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Lfreemarker/template/TemplateModel;ILfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v11, p3

    .line 1
    invoke-static/range {v0 .. v11}, Lfreemarker/core/f0;->catch(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;ILjava/lang/String;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Lfreemarker/core/h0;ZZZZLfreemarker/core/d0;)Z

    move-result p0

    return p0
.end method

.method public static case(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;ZLjava/lang/String;Lfreemarker/core/d0;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lfreemarker/template/TemplateNumberModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lfreemarker/template/TemplateNumberModel;

    .line 3
    invoke-virtual {p4, p1, v1}, Lfreemarker/core/d0;->w2(Lfreemarker/core/h0;Z)Lfreemarker/core/f4;

    move-result-object p2

    .line 4
    :try_start_0
    invoke-virtual {p2, p0}, Lfreemarker/core/f4;->if(Lfreemarker/template/TemplateNumberModel;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/core/f0;->do(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Landroid/support/v4/p52; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    invoke-static {p2, p1, p0, v1}, Lfreemarker/core/b5;->while(Lfreemarker/core/f4;Lfreemarker/core/h0;Landroid/support/v4/p52;Z)Lfreemarker/template/TemplateException;

    move-result-object p0

    throw p0

    .line 6
    :cond_0
    instance-of v0, p0, Lfreemarker/template/TemplateDateModel;

    if-eqz v0, :cond_1

    .line 7
    check-cast p0, Lfreemarker/template/TemplateDateModel;

    .line 8
    invoke-virtual {p4, p0, p1, v1}, Lfreemarker/core/d0;->j2(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/h0;Z)Lfreemarker/core/z3;

    move-result-object p2

    .line 9
    :try_start_1
    invoke-virtual {p2, p0}, Lfreemarker/core/z3;->if(Lfreemarker/template/TemplateDateModel;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/core/f0;->do(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Landroid/support/v4/p52; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 10
    invoke-static {p2, p1, p0, v1}, Lfreemarker/core/b5;->throw(Lfreemarker/core/z3;Lfreemarker/core/h0;Landroid/support/v4/p52;Z)Lfreemarker/template/TemplateException;

    move-result-object p0

    throw p0

    .line 11
    :cond_1
    instance-of v0, p0, Lfreemarker/core/TemplateMarkupOutputModel;

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v5, p2

    move-object v6, p4

    .line 12
    invoke-static/range {v1 .. v6}, Lfreemarker/core/f0;->goto(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Ljava/lang/String;ZZLfreemarker/core/d0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static catch(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;ILjava/lang/String;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Lfreemarker/core/h0;ZZZZLfreemarker/core/d0;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p11

    const/4 v5, 0x0

    if-nez p0, :cond_3

    if-eqz v4, :cond_0

    .line 1
    invoke-virtual/range {p11 .. p11}, Lfreemarker/core/t;->y()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2
    sget-object v6, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    goto :goto_0

    :cond_0
    if-eqz p9, :cond_1

    return v5

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    invoke-static {v0, v4}, Lfreemarker/core/b1;->getInstance(Lfreemarker/core/h0;Lfreemarker/core/d0;)Lfreemarker/core/b1;

    move-result-object v0

    throw v0

    .line 4
    :cond_2
    new-instance v0, Landroid/support/v4/nl2;

    const-string v1, "The left operand of the comparison was undefined or null."

    invoke-direct {v0, v3, v4, v1}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;Lfreemarker/core/d0;Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object/from16 v6, p0

    :goto_0
    if-nez p4, :cond_7

    if-eqz v4, :cond_4

    .line 5
    invoke-virtual/range {p11 .. p11}, Lfreemarker/core/t;->y()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 6
    sget-object v7, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    goto :goto_1

    :cond_4
    if-eqz p10, :cond_5

    return v5

    :cond_5
    if-eqz v2, :cond_6

    .line 7
    invoke-static {v2, v4}, Lfreemarker/core/b1;->getInstance(Lfreemarker/core/h0;Lfreemarker/core/d0;)Lfreemarker/core/b1;

    move-result-object v0

    throw v0

    .line 8
    :cond_6
    new-instance v0, Landroid/support/v4/nl2;

    const-string v1, "The right operand of the comparison was undefined or null."

    invoke-direct {v0, v3, v4, v1}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;Lfreemarker/core/d0;Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v7, p4

    .line 9
    :goto_1
    instance-of v8, v6, Lfreemarker/template/TemplateNumberModel;

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v8, :cond_a

    instance-of v8, v7, Lfreemarker/template/TemplateNumberModel;

    if-eqz v8, :cond_a

    .line 10
    check-cast v6, Lfreemarker/template/TemplateNumberModel;

    invoke-static {v6, v0}, Lfreemarker/core/f0;->import(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/h0;)Ljava/lang/Number;

    move-result-object v6

    .line 11
    check-cast v7, Lfreemarker/template/TemplateNumberModel;

    invoke-static {v7, v2}, Lfreemarker/core/f0;->import(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/h0;)Ljava/lang/Number;

    move-result-object v2

    if-eqz v4, :cond_8

    .line 12
    invoke-virtual/range {p11 .. p11}, Lfreemarker/core/t;->getArithmeticEngine()Lfreemarker/core/else;

    move-result-object v0

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    .line 13
    invoke-virtual/range {p1 .. p1}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/core/t;->getArithmeticEngine()Lfreemarker/core/else;

    move-result-object v0

    goto :goto_2

    :cond_9
    sget-object v0, Lfreemarker/core/else;->new:Lfreemarker/core/else$do;

    .line 14
    :goto_2
    :try_start_0
    invoke-virtual {v0, v6, v2}, Lfreemarker/core/else;->new(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 15
    new-instance v0, Landroid/support/v4/nl2;

    new-array v2, v9, [Ljava/lang/Object;

    const-string v6, "Unexpected error while comparing two numbers: "

    aput-object v6, v2, v5

    aput-object v1, v2, v10

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;Ljava/lang/Throwable;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw v0

    .line 16
    :cond_a
    instance-of v8, v6, Lfreemarker/template/TemplateDateModel;

    const-string v11, "."

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    if-eqz v8, :cond_10

    instance-of v8, v7, Lfreemarker/template/TemplateDateModel;

    if-eqz v8, :cond_10

    .line 17
    check-cast v6, Lfreemarker/template/TemplateDateModel;

    .line 18
    check-cast v7, Lfreemarker/template/TemplateDateModel;

    .line 19
    invoke-interface {v6}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result v8

    .line 20
    invoke-interface {v7}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result v15

    if-eqz v8, :cond_d

    if-nez v15, :cond_b

    goto :goto_3

    :cond_b
    if-ne v8, v15, :cond_c

    .line 21
    invoke-static {v6, v0}, Lfreemarker/core/f0;->while(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/h0;)Ljava/util/Date;

    move-result-object v0

    .line 22
    invoke-static {v7, v2}, Lfreemarker/core/f0;->while(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/h0;)Ljava/util/Date;

    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto/16 :goto_8

    .line 24
    :cond_c
    new-instance v0, Landroid/support/v4/nl2;

    new-array v1, v12, [Ljava/lang/Object;

    const-string v2, "Can\'t compare dates of different types. Left date type is "

    aput-object v2, v1, v5

    sget-object v2, Lfreemarker/template/TemplateDateModel;->TYPE_NAMES:Ljava/util/List;

    .line 25
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v10

    const-string v5, ", right date type is "

    aput-object v5, v1, v9

    .line 26
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v14

    aput-object v11, v1, v13

    invoke-direct {v0, v3, v4, v1}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw v0

    :cond_d
    :goto_3
    if-nez v8, :cond_e

    const-string v1, "left"

    goto :goto_4

    :cond_e
    const-string v1, "right"

    move-object v0, v2

    .line 27
    :goto_4
    new-instance v2, Landroid/support/v4/nl2;

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    move-object v0, v3

    :goto_5
    new-array v3, v13, [Ljava/lang/Object;

    const-string v6, "The "

    aput-object v6, v3, v5

    aput-object v1, v3, v10

    const-string v1, " "

    aput-object v1, v3, v9

    const-string v1, "value of the comparison is a date-like value where it\'s not known if it\'s a date (no time part), time, or date-time, and thus can\'t be used in a comparison."

    aput-object v1, v3, v14

    invoke-direct {v2, v0, v4, v3}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw v2

    .line 28
    :cond_10
    instance-of v8, v6, Lfreemarker/template/TemplateScalarModel;

    const-string v15, "Can\'t use operator \""

    if-eqz v8, :cond_13

    instance-of v8, v7, Lfreemarker/template/TemplateScalarModel;

    if-eqz v8, :cond_13

    if-eq v1, v10, :cond_12

    if-ne v1, v9, :cond_11

    goto :goto_6

    .line 29
    :cond_11
    new-instance v0, Landroid/support/v4/nl2;

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v15, v2, v5

    .line 30
    invoke-static/range {p2 .. p3}, Lfreemarker/core/f0;->for(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v10

    const-string v1, "\" on string values."

    aput-object v1, v2, v9

    invoke-direct {v0, v3, v4, v2}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw v0

    .line 31
    :cond_12
    :goto_6
    check-cast v6, Lfreemarker/template/TemplateScalarModel;

    invoke-static {v6, v0, v4}, Lfreemarker/core/f0;->native(Lfreemarker/template/TemplateScalarModel;Lfreemarker/core/h0;Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v0

    .line 32
    check-cast v7, Lfreemarker/template/TemplateScalarModel;

    invoke-static {v7, v2, v4}, Lfreemarker/core/f0;->native(Lfreemarker/template/TemplateScalarModel;Lfreemarker/core/h0;Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual/range {p11 .. p11}, Lfreemarker/core/d0;->t1()Ljava/text/Collator;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    .line 34
    :cond_13
    instance-of v8, v6, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v8, :cond_16

    instance-of v8, v7, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v8, :cond_16

    if-eq v1, v10, :cond_15

    if-ne v1, v9, :cond_14

    goto :goto_7

    .line 35
    :cond_14
    new-instance v0, Landroid/support/v4/nl2;

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v15, v2, v5

    .line 36
    invoke-static/range {p2 .. p3}, Lfreemarker/core/f0;->for(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v10

    const-string v1, "\" on boolean values."

    aput-object v1, v2, v9

    invoke-direct {v0, v3, v4, v2}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw v0

    .line 37
    :cond_15
    :goto_7
    check-cast v6, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {v6}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result v0

    .line 38
    check-cast v7, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {v7}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_8

    .line 39
    :cond_16
    invoke-virtual/range {p11 .. p11}, Lfreemarker/core/t;->y()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 40
    invoke-virtual {v0, v4}, Lfreemarker/core/h0;->default(Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {v2, v4}, Lfreemarker/core/h0;->default(Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual/range {p11 .. p11}, Lfreemarker/core/d0;->t1()Ljava/text/Collator;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_8
    packed-switch v1, :pswitch_data_0

    .line 43
    new-instance v0, Landroid/support/v4/mc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported comparator operator code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/mc;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-ltz v0, :cond_17

    const/4 v5, 0x1

    :cond_17
    return v5

    :pswitch_1
    if-gtz v0, :cond_18

    const/4 v5, 0x1

    :cond_18
    return v5

    :pswitch_2
    if-lez v0, :cond_19

    const/4 v5, 0x1

    :cond_19
    return v5

    :pswitch_3
    if-gez v0, :cond_1a

    const/4 v5, 0x1

    :cond_1a
    return v5

    :pswitch_4
    if-eqz v0, :cond_1b

    const/4 v5, 0x1

    :cond_1b
    return v5

    :pswitch_5
    if-nez v0, :cond_1c

    const/4 v5, 0x1

    :cond_1c
    return v5

    :cond_1d
    if-eqz p8, :cond_1f

    if-ne v1, v10, :cond_1e

    return v5

    :cond_1e
    if-ne v1, v9, :cond_1f

    return v10

    .line 44
    :cond_1f
    new-instance v1, Landroid/support/v4/nl2;

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/Object;

    const-string v15, "Can\'t compare values of these types. "

    aput-object v15, v8, v5

    const-string v15, "Allowed comparisons are between two numbers, two strings, two dates, or two booleans.\n"

    aput-object v15, v8, v10

    const-string v15, "Left hand operand "

    aput-object v15, v8, v9

    const-string v15, ") value "

    const-string v16, "("

    const-string v17, ""

    if-eqz p7, :cond_20

    if-eqz v0, :cond_20

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v16, v12, v5

    new-instance v5, Landroid/support/v4/cl2;

    invoke-direct {v5, v0}, Landroid/support/v4/cl2;-><init>(Lfreemarker/core/h4;)V

    aput-object v5, v12, v10

    aput-object v15, v12, v9

    goto :goto_9

    :cond_20
    move-object/from16 v12, v17

    :goto_9
    aput-object v12, v8, v14

    const-string v0, "is "

    aput-object v0, v8, v13

    new-instance v5, Landroid/support/v4/zk2;

    new-instance v12, Landroid/support/v4/bl2;

    invoke-direct {v12, v6}, Landroid/support/v4/bl2;-><init>(Lfreemarker/template/TemplateModel;)V

    invoke-direct {v5, v12}, Landroid/support/v4/zk2;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x5

    aput-object v5, v8, v6

    const/4 v5, 0x6

    const-string v6, ".\n"

    aput-object v6, v8, v5

    const/4 v5, 0x7

    const-string v6, "Right hand operand "

    aput-object v6, v8, v5

    const/16 v5, 0x8

    if-eqz p7, :cond_21

    if-eqz v2, :cond_21

    new-array v6, v14, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v16, v6, v12

    new-instance v12, Landroid/support/v4/cl2;

    invoke-direct {v12, v2}, Landroid/support/v4/cl2;-><init>(Lfreemarker/core/h4;)V

    aput-object v12, v6, v10

    aput-object v15, v6, v9

    move-object/from16 v17, v6

    :cond_21
    aput-object v17, v8, v5

    const/16 v2, 0x9

    aput-object v0, v8, v2

    const/16 v0, 0xa

    new-instance v2, Landroid/support/v4/zk2;

    new-instance v5, Landroid/support/v4/bl2;

    invoke-direct {v5, v7}, Landroid/support/v4/bl2;-><init>(Lfreemarker/template/TemplateModel;)V

    invoke-direct {v2, v5}, Landroid/support/v4/zk2;-><init>(Ljava/lang/Object;)V

    aput-object v2, v8, v0

    const/16 v0, 0xb

    aput-object v11, v8, v0

    invoke-direct {v1, v3, v4, v8}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static class(Lfreemarker/template/TemplateModel;ILfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v11, p3

    .line 1
    invoke-static/range {v0 .. v11}, Lfreemarker/core/f0;->catch(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;ILjava/lang/String;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Lfreemarker/core/h0;ZZZZLfreemarker/core/d0;)Z

    move-result p0

    return p0
.end method

.method public static const(Lfreemarker/core/h4;Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/y1;

    move-result-object v0

    .line 2
    invoke-interface {p2}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/y1;

    move-result-object v1

    if-eq v1, v0, :cond_3

    .line 3
    invoke-virtual {v1, p2}, Lfreemarker/core/y1;->break(Lfreemarker/core/TemplateMarkupOutputModel;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Lfreemarker/core/y1;->goto(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lfreemarker/core/y1;->try(Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lfreemarker/core/y1;->break(Lfreemarker/core/TemplateMarkupOutputModel;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v1, p1}, Lfreemarker/core/y1;->goto(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p0

    invoke-virtual {v1, p0, p2}, Lfreemarker/core/y1;->try(Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v2, "Concatenation left hand operand is in "

    aput-object v2, p1, p2

    const/4 p2, 0x1

    .line 7
    new-instance v2, Landroid/support/v4/jl2;

    invoke-direct {v2, v0}, Landroid/support/v4/jl2;-><init>(Ljava/lang/Object;)V

    aput-object v2, p1, p2

    const/4 p2, 0x2

    const-string v0, " format, while the right hand operand is in "

    aput-object v0, p1, p2

    const/4 p2, 0x3

    new-instance v0, Landroid/support/v4/jl2;

    invoke-direct {v0, v1}, Landroid/support/v4/jl2;-><init>(Ljava/lang/Object;)V

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, ". Conversion to common format wasn\'t possible."

    aput-object v0, p1, p2

    .line 8
    instance-of p2, p0, Lfreemarker/core/h0;

    if-eqz p2, :cond_2

    .line 9
    new-instance p2, Landroid/support/v4/nl2;

    check-cast p0, Lfreemarker/core/h0;

    invoke-direct {p2, p0, p1}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;[Ljava/lang/Object;)V

    throw p2

    .line 10
    :cond_2
    new-instance p0, Landroid/support/v4/nl2;

    invoke-direct {p0, p1}, Landroid/support/v4/nl2;-><init>([Ljava/lang/Object;)V

    throw p0

    .line 11
    :cond_3
    invoke-virtual {v0, p1, p2}, Lfreemarker/core/y1;->try(Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p0

    return-object p0
.end method

.method public static do(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "TemplateValueFormatter result can\'t be null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static else(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/core/d0;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lfreemarker/template/TemplateNumberModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lfreemarker/template/TemplateNumberModel;

    .line 3
    invoke-virtual {p3, p1, v1}, Lfreemarker/core/d0;->w2(Lfreemarker/core/h0;Z)Lfreemarker/core/f4;

    move-result-object p2

    .line 4
    :try_start_0
    invoke-virtual {p2, p0}, Lfreemarker/core/f4;->if(Lfreemarker/template/TemplateNumberModel;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lfreemarker/core/f0;->final(Ljava/lang/Object;Lfreemarker/core/h0;Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/support/v4/p52; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    invoke-static {p2, p1, p0, v1}, Lfreemarker/core/b5;->while(Lfreemarker/core/f4;Lfreemarker/core/h0;Landroid/support/v4/p52;Z)Lfreemarker/template/TemplateException;

    move-result-object p0

    throw p0

    .line 6
    :cond_0
    instance-of v0, p0, Lfreemarker/template/TemplateDateModel;

    if-eqz v0, :cond_1

    .line 7
    check-cast p0, Lfreemarker/template/TemplateDateModel;

    .line 8
    invoke-virtual {p3, p0, p1, v1}, Lfreemarker/core/d0;->j2(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/h0;Z)Lfreemarker/core/z3;

    move-result-object p2

    .line 9
    :try_start_1
    invoke-virtual {p2, p0}, Lfreemarker/core/z3;->if(Lfreemarker/template/TemplateDateModel;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lfreemarker/core/f0;->final(Ljava/lang/Object;Lfreemarker/core/h0;Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Landroid/support/v4/p52; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 10
    invoke-static {p2, p1, p0, v1}, Lfreemarker/core/b5;->throw(Lfreemarker/core/z3;Lfreemarker/core/h0;Landroid/support/v4/p52;Z)Lfreemarker/template/TemplateException;

    move-result-object p0

    throw p0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 11
    invoke-static/range {v0 .. v5}, Lfreemarker/core/f0;->goto(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Ljava/lang/String;ZZLfreemarker/core/d0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final(Ljava/lang/Object;Lfreemarker/core/h0;Lfreemarker/core/d0;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/u2;
        }
    .end annotation

    .line 1
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 2
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lfreemarker/core/f0;->do(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    check-cast p0, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 5
    new-instance p2, Lfreemarker/core/z4;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Value was formatted to convert it to string, but the result was markup of ouput format "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/support/v4/fl2;

    .line 6
    invoke-interface {p0}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/y1;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 p0, 0x2

    const-string v1, "."

    aput-object v1, v0, p0

    invoke-direct {p2, v0}, Lfreemarker/core/z4;-><init>([Ljava/lang/Object;)V

    const-string p0, "Use value?string to force formatting to plain text."

    .line 7
    invoke-virtual {p2, p0}, Lfreemarker/core/z4;->this(Ljava/lang/String;)Lfreemarker/core/z4;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Lfreemarker/core/z4;->if(Lfreemarker/core/h0;)Lfreemarker/core/z4;

    move-result-object p0

    .line 9
    new-instance p1, Lfreemarker/core/u2;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lfreemarker/core/u2;-><init>(Lfreemarker/core/d0;Lfreemarker/core/z4;)V

    throw p1
.end method

.method private static for(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    packed-switch p0, :pswitch_data_0

    const-string p0, "???"

    return-object p0

    :pswitch_0
    const-string p0, "greater-than-equals"

    return-object p0

    :pswitch_1
    const-string p0, "less-than-equals"

    return-object p0

    :pswitch_2
    const-string p0, "greater-than"

    return-object p0

    :pswitch_3
    const-string p0, "less-than"

    return-object p0

    :pswitch_4
    const-string p0, "not-equals"

    return-object p0

    :pswitch_5
    const-string p0, "equals"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static goto(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Ljava/lang/String;ZZLfreemarker/core/d0;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;,
            Lfreemarker/core/b1;,
            Lfreemarker/template/TemplateException;,
            Lfreemarker/core/v2;,
            Lfreemarker/core/u2;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lfreemarker/template/TemplateScalarModel;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lfreemarker/template/TemplateScalarModel;

    invoke-static {p0, p1, p5}, Lfreemarker/core/f0;->native(Lfreemarker/template/TemplateScalarModel;Lfreemarker/core/h0;Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, ""

    if-nez p0, :cond_3

    .line 3
    invoke-virtual {p5}, Lfreemarker/core/t;->y()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-static {p1, p5}, Lfreemarker/core/b1;->getInstance(Lfreemarker/core/h0;Lfreemarker/core/d0;)Lfreemarker/core/b1;

    move-result-object p0

    throw p0

    .line 5
    :cond_2
    new-instance p0, Lfreemarker/core/b1;

    const-string p1, "Null/missing value (no more informatoin avilable)"

    invoke-direct {p0, p1, p5}, Lfreemarker/core/b1;-><init>(Ljava/lang/String;Lfreemarker/core/d0;)V

    throw p0

    .line 6
    :cond_3
    instance-of v1, p0, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v1, :cond_a

    .line 7
    move-object p1, p0

    check-cast p1, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result p1

    .line 8
    invoke-virtual {p5}, Lfreemarker/core/t;->super()I

    move-result p2

    if-nez p2, :cond_4

    const/4 p0, 0x0

    .line 9
    invoke-virtual {p5, p1, p0}, Lfreemarker/core/t;->else(ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p3, 0x1

    const-string p4, "true"

    if-ne p2, p3, :cond_6

    if-eqz p1, :cond_5

    move-object v0, p4

    :cond_5
    return-object v0

    :cond_6
    const/4 p3, 0x2

    if-ne p2, p3, :cond_9

    .line 10
    instance-of p2, p0, Lfreemarker/ext/beans/new;

    if-eqz p2, :cond_7

    .line 11
    check-cast p0, Lfreemarker/ext/beans/new;

    invoke-static {p0}, Lfreemarker/ext/beans/_BeansAPI;->if(Lfreemarker/ext/beans/new;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz p1, :cond_8

    move-object v0, p4

    :cond_8
    return-object v0

    .line 12
    :cond_9
    new-instance p0, Landroid/support/v4/mc;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported classic_compatible variation: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/mc;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_a
    invoke-virtual {p5}, Lfreemarker/core/t;->y()Z

    move-result v0

    if-eqz v0, :cond_b

    instance-of v0, p0, Lfreemarker/ext/beans/new;

    if-eqz v0, :cond_b

    .line 14
    check-cast p0, Lfreemarker/ext/beans/new;

    invoke-static {p0}, Lfreemarker/ext/beans/_BeansAPI;->if(Lfreemarker/ext/beans/new;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    if-eqz p4, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    if-eqz p2, :cond_f

    .line 15
    instance-of p4, p0, Lfreemarker/template/TemplateSequenceModel;

    if-nez p4, :cond_d

    instance-of p4, p0, Lfreemarker/template/TemplateCollectionModel;

    if-eqz p4, :cond_f

    :cond_d
    if-eqz p3, :cond_e

    .line 16
    new-instance p3, Lfreemarker/core/v2;

    invoke-direct {p3, p1, p0, p2, p5}, Lfreemarker/core/v2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;Lfreemarker/core/d0;)V

    throw p3

    .line 17
    :cond_e
    new-instance p3, Lfreemarker/core/u2;

    invoke-direct {p3, p1, p0, p2, p5}, Lfreemarker/core/u2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;Lfreemarker/core/d0;)V

    throw p3

    :cond_f
    if-eqz p3, :cond_10

    .line 18
    new-instance p2, Lfreemarker/core/v2;

    invoke-direct {p2, p1, p0, p5}, Lfreemarker/core/v2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    throw p2

    .line 19
    :cond_10
    new-instance p2, Lfreemarker/core/u2;

    invoke-direct {p2, p1, p0, p5}, Lfreemarker/core/u2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    throw p2
.end method

.method public static if(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "TemplateValueFormatter result can\'t be null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static import(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/h0;)Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    const-class v0, Ljava/lang/Number;

    invoke-static {v0, p0, p1}, Lfreemarker/core/f0;->public(Ljava/lang/Class;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;)Landroid/support/v4/k52;

    move-result-object p0

    throw p0
.end method

.method public static native(Lfreemarker/template/TemplateScalarModel;Lfreemarker/core/h0;Lfreemarker/core/d0;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    .line 2
    invoke-static {}, Lfreemarker/core/d0;->w1()Lfreemarker/core/d0;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Lfreemarker/core/t;->y()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, ""

    return-object p0

    .line 4
    :cond_1
    const-class p2, Ljava/lang/String;

    invoke-static {p2, p0, p1}, Lfreemarker/core/f0;->public(Ljava/lang/Class;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;)Landroid/support/v4/k52;

    move-result-object p0

    throw p0

    :cond_2
    return-object v0
.end method

.method public static new(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/core/d0;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lfreemarker/template/TemplateNumberModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lfreemarker/template/TemplateNumberModel;

    invoke-virtual {p3, p0, p1, v1}, Lfreemarker/core/d0;->p1(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/h0;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/core/f0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lfreemarker/template/TemplateDateModel;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lfreemarker/template/TemplateDateModel;

    invoke-virtual {p3, p0, p1, v1}, Lfreemarker/core/d0;->n1(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/h0;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/core/f0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 5
    invoke-static/range {v0 .. v5}, Lfreemarker/core/f0;->goto(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Ljava/lang/String;ZZLfreemarker/core/d0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static public(Ljava/lang/Class;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;)Landroid/support/v4/k52;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/vl2;

    .line 2
    invoke-static {p0, p1}, Landroid/support/v4/vl2;->modelHasStoredNullDescription(Ljava/lang/Class;Lfreemarker/template/TemplateModel;)[Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p2, p0}, Landroid/support/v4/vl2;-><init>(Lfreemarker/core/h0;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static return(Ljava/lang/Throwable;Lfreemarker/core/d0;)Z
    .locals 3

    .line 1
    const-class v0, Lfreemarker/core/m0;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lfreemarker/core/t;->l()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p1}, Lfreemarker/core/d0;->u1()Lfreemarker/template/do;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/we2;->intValue()I

    move-result p1

    sget v0, Landroid/support/v4/ul2;->break:I

    if-lt p1, v0, :cond_3

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 5
    const-class p1, Ljava/lang/NullPointerException;

    if-eq p0, p1, :cond_2

    const-class p1, Ljava/lang/ClassCastException;

    if-eq p0, p1, :cond_2

    const-class p1, Ljava/lang/IndexOutOfBoundsException;

    if-eq p0, p1, :cond_2

    const-class p1, Ljava/lang/reflect/InvocationTargetException;

    if-ne p0, p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static super(Lfreemarker/core/d0;Lfreemarker/core/h4;)Lfreemarker/core/else;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->getArithmeticEngine()Lfreemarker/core/else;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object p0

    invoke-virtual {p0}, Lfreemarker/template/static;->j1()Lfreemarker/core/ParserConfiguration;

    move-result-object p0

    invoke-interface {p0}, Lfreemarker/core/ParserConfiguration;->getArithmeticEngine()Lfreemarker/core/else;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static this(Lfreemarker/core/h0;ILjava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0;Lfreemarker/core/d0;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v11, p5

    .line 1
    invoke-virtual {p0, v11}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    move-object v5, p3

    .line 2
    invoke-virtual {p3, v11}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v2, p1

    move-object v3, p2

    move-object/from16 v6, p4

    .line 3
    invoke-static/range {v0 .. v11}, Lfreemarker/core/f0;->catch(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;ILjava/lang/String;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Lfreemarker/core/h0;ZZZZLfreemarker/core/d0;)Z

    move-result v0

    return v0
.end method

.method public static throw(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance v0, Landroid/support/v4/mc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported comparator operator code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/mc;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, 0x5

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static try(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/core/d0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2, p3}, Lfreemarker/core/f0;->case(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;ZLjava/lang/String;Lfreemarker/core/d0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static while(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/h0;)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lfreemarker/template/TemplateDateModel;->getAsDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-static {v0, p0, p1}, Lfreemarker/core/f0;->public(Ljava/lang/Class;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;)Landroid/support/v4/k52;

    move-result-object p0

    throw p0
.end method
