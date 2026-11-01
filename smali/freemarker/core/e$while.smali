.class Lfreemarker/core/e$while;
.super Lfreemarker/core/continue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "while"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/e$while$try;,
        Lfreemarker/core/e$while$new;,
        Lfreemarker/core/e$while$for;,
        Lfreemarker/core/e$while$if;,
        Lfreemarker/core/e$while$do;
    }
.end annotation


# static fields
.field public static final final:I = 0x0

.field public static final import:I = 0x4

.field public static final super:I = 0x1

.field public static final throw:I = 0x2

.field public static final while:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/continue;-><init>()V

    return-void
.end method

.method public static s(ILjava/lang/String;Ljava/lang/String;ILfreemarker/template/TemplateModel;)Landroid/support/v4/k52;
    .locals 5

    if-nez p0, :cond_0

    const-string v0, "value"

    const-string v1, "values"

    goto :goto_0

    :cond_0
    const-string v0, "key value"

    const-string v1, "key values"

    .line 1
    :goto_0
    new-instance v2, Landroid/support/v4/vl2;

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 2
    invoke-static {p0, p3}, Lfreemarker/core/e$while;->v(II)[Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    const-string p3, "All "

    aput-object p3, v3, p0

    const/4 p0, 0x2

    aput-object v1, v3, p0

    const/4 p0, 0x3

    const-string p3, " in the sequence must be "

    aput-object p3, v3, p0

    const/4 p0, 0x4

    aput-object p2, v3, p0

    const/4 p0, 0x5

    const-string p2, ", because the first "

    aput-object p2, v3, p0

    const/4 p0, 0x6

    aput-object v0, v3, p0

    const/4 p0, 0x7

    const-string p2, " was that. However, the "

    aput-object p2, v3, p0

    const/16 p0, 0x8

    aput-object v0, v3, p0

    const/16 p0, 0x9

    const-string p2, " of the current item isn\'t a "

    aput-object p2, v3, p0

    const/16 p0, 0xa

    aput-object p1, v3, p0

    const/16 p0, 0xb

    const-string p1, " but a "

    aput-object p1, v3, p0

    const/16 p0, 0xc

    new-instance p1, Landroid/support/v4/bl2;

    invoke-direct {p1, p4}, Landroid/support/v4/bl2;-><init>(Lfreemarker/template/TemplateModel;)V

    aput-object p1, v3, p0

    const/16 p0, 0xd

    const-string p1, "."

    aput-object p1, v3, p0

    invoke-direct {v2, v3}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    return-object v2
.end method

.method public static t(Lfreemarker/template/TemplateSequenceModel;[Ljava/lang/String;)Lfreemarker/template/TemplateSequenceModel;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "The "

    .line 1
    invoke-interface/range {p0 .. p0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v3

    if-nez v3, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    if-nez v1, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    .line 3
    :cond_1
    array-length v6, v1

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v8, v3, :cond_13

    .line 4
    invoke-interface {v0, v8}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v13

    move-object v15, v13

    const/4 v14, 0x0

    :goto_2
    const/4 v7, 0x3

    if-ge v14, v6, :cond_5

    .line 5
    :try_start_0
    move-object v11, v15

    check-cast v11, Lfreemarker/template/TemplateHashModel;

    aget-object v12, v1, v14

    invoke-interface {v11, v12}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v15, :cond_2

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 6
    :cond_2
    new-instance v0, Landroid/support/v4/vl2;

    new-array v3, v7, [Ljava/lang/Object;

    .line 7
    invoke-static {v6, v8}, Lfreemarker/core/e$while;->v(II)[Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v14

    .line 8
    invoke-static {v1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const-string v1, " subvariable was null or missing."

    const/4 v2, 0x2

    aput-object v1, v3, v2

    invoke-direct {v0, v3}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw v0

    :catch_0
    move-exception v0

    .line 9
    instance-of v3, v15, Lfreemarker/template/TemplateHashModel;

    if-nez v3, :cond_4

    .line 10
    new-instance v0, Landroid/support/v4/vl2;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    invoke-static {v6, v8}, Lfreemarker/core/e$while;->v(II)[Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    if-nez v14, :cond_3

    const-string v2, "Sequence items must be hashes when using ?sort_by. "

    goto :goto_3

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v14, -0x1

    aget-object v2, v1, v2

    .line 12
    invoke-static {v2}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, " subvariable is not a hash, so ?sort_by "

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const-string v2, "can\'t proceed with getting the "

    aput-object v2, v3, v7

    new-instance v2, Landroid/support/v4/fl2;

    aget-object v1, v1, v14

    invoke-direct {v2, v1}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x4

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, " subvariable."

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw v0

    .line 13
    :cond_4
    throw v0

    :cond_5
    if-nez v10, :cond_a

    .line 14
    instance-of v9, v15, Lfreemarker/template/TemplateScalarModel;

    if-eqz v9, :cond_6

    .line 15
    new-instance v9, Lfreemarker/core/e$while$new;

    .line 16
    invoke-static {}, Lfreemarker/core/d0;->w1()Lfreemarker/core/d0;

    move-result-object v10

    invoke-virtual {v10}, Lfreemarker/core/d0;->t1()Ljava/text/Collator;

    move-result-object v10

    invoke-direct {v9, v10}, Lfreemarker/core/e$while$new;-><init>(Ljava/text/Collator;)V

    const/4 v10, 0x1

    goto :goto_4

    .line 17
    :cond_6
    instance-of v9, v15, Lfreemarker/template/TemplateNumberModel;

    if-eqz v9, :cond_7

    .line 18
    new-instance v9, Lfreemarker/core/e$while$try;

    .line 19
    invoke-static {}, Lfreemarker/core/d0;->w1()Lfreemarker/core/d0;

    move-result-object v10

    .line 20
    invoke-virtual {v10}, Lfreemarker/core/t;->getArithmeticEngine()Lfreemarker/core/else;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lfreemarker/core/e$while$try;-><init>(Lfreemarker/core/else;Lfreemarker/core/e$do;)V

    const/4 v10, 0x2

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    .line 21
    instance-of v9, v15, Lfreemarker/template/TemplateDateModel;

    if-eqz v9, :cond_8

    .line 22
    new-instance v9, Lfreemarker/core/e$while$if;

    invoke-direct {v9, v11}, Lfreemarker/core/e$while$if;-><init>(Lfreemarker/core/e$do;)V

    const/4 v10, 0x3

    goto :goto_4

    .line 23
    :cond_8
    instance-of v9, v15, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v9, :cond_9

    .line 24
    new-instance v9, Lfreemarker/core/e$while$do;

    invoke-direct {v9, v11}, Lfreemarker/core/e$while$do;-><init>(Lfreemarker/core/e$do;)V

    const/4 v10, 0x4

    goto :goto_4

    .line 25
    :cond_9
    new-instance v0, Landroid/support/v4/vl2;

    const/4 v11, 0x2

    new-array v1, v11, [Ljava/lang/Object;

    .line 26
    invoke-static {v6, v8}, Lfreemarker/core/e$while;->v(II)[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Values used for sorting must be numbers, strings, date/times or booleans."

    const/4 v12, 0x1

    aput-object v2, v1, v12

    invoke-direct {v0, v1}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw v0

    :cond_a
    :goto_4
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v10, v12, :cond_11

    if-eq v10, v11, :cond_f

    if-eq v10, v7, :cond_d

    const/4 v7, 0x4

    if-ne v10, v7, :cond_c

    .line 27
    :try_start_1
    new-instance v7, Lfreemarker/core/e$while$for;

    move-object v11, v15

    check-cast v11, Lfreemarker/template/TemplateBooleanModel;

    .line 28
    invoke-interface {v11}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v7, v11, v13, v12}, Lfreemarker/core/e$while$for;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lfreemarker/core/e$do;)V

    .line 29
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    nop

    .line 30
    instance-of v7, v15, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v7, :cond_b

    goto :goto_5

    :cond_b
    const-string v0, "boolean"

    const-string v1, "booleans"

    .line 31
    invoke-static {v6, v0, v1, v8, v15}, Lfreemarker/core/e$while;->s(ILjava/lang/String;Ljava/lang/String;ILfreemarker/template/TemplateModel;)Landroid/support/v4/k52;

    move-result-object v0

    throw v0

    .line 32
    :cond_c
    new-instance v0, Landroid/support/v4/mc;

    const-string v1, "Unexpected key type"

    invoke-direct {v0, v1}, Landroid/support/v4/mc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_d
    :try_start_2
    new-instance v7, Lfreemarker/core/e$while$for;

    move-object v11, v15

    check-cast v11, Lfreemarker/template/TemplateDateModel;

    .line 34
    invoke-interface {v11}, Lfreemarker/template/TemplateDateModel;->getAsDate()Ljava/util/Date;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v7, v11, v13, v12}, Lfreemarker/core/e$while$for;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lfreemarker/core/e$do;)V

    .line 35
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    nop

    .line 36
    instance-of v7, v15, Lfreemarker/template/TemplateDateModel;

    if-eqz v7, :cond_e

    goto :goto_5

    :cond_e
    const-string v0, "date/time"

    const-string v1, "date/times"

    .line 37
    invoke-static {v6, v0, v1, v8, v15}, Lfreemarker/core/e$while;->s(ILjava/lang/String;Ljava/lang/String;ILfreemarker/template/TemplateModel;)Landroid/support/v4/k52;

    move-result-object v0

    throw v0

    .line 38
    :cond_f
    :try_start_3
    new-instance v7, Lfreemarker/core/e$while$for;

    move-object v11, v15

    check-cast v11, Lfreemarker/template/TemplateNumberModel;

    .line 39
    invoke-interface {v11}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v7, v11, v13, v12}, Lfreemarker/core/e$while$for;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lfreemarker/core/e$do;)V

    .line 40
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    nop

    .line 41
    instance-of v7, v15, Lfreemarker/template/TemplateNumberModel;

    if-eqz v7, :cond_10

    :goto_5
    const/4 v12, 0x0

    goto :goto_6

    :cond_10
    const-string v0, "number"

    const-string v1, "numbers"

    .line 42
    invoke-static {v6, v0, v1, v8, v15}, Lfreemarker/core/e$while;->s(ILjava/lang/String;Ljava/lang/String;ILfreemarker/template/TemplateModel;)Landroid/support/v4/k52;

    move-result-object v0

    throw v0

    .line 43
    :cond_11
    :try_start_4
    new-instance v7, Lfreemarker/core/e$while$for;

    move-object v11, v15

    check-cast v11, Lfreemarker/template/TemplateScalarModel;

    .line 44
    invoke-interface {v11}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v7, v11, v13, v12}, Lfreemarker/core/e$while$for;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lfreemarker/core/e$do;)V

    .line 45
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :catch_4
    move-exception v0

    .line 46
    instance-of v1, v15, Lfreemarker/template/TemplateScalarModel;

    if-nez v1, :cond_12

    const-string v0, "string"

    const-string v1, "strings"

    .line 47
    invoke-static {v6, v0, v1, v8, v15}, Lfreemarker/core/e$while;->s(ILjava/lang/String;Ljava/lang/String;ILfreemarker/template/TemplateModel;)Landroid/support/v4/k52;

    move-result-object v0

    throw v0

    .line 48
    :cond_12
    throw v0

    .line 49
    :cond_13
    :try_start_5
    invoke-static {v4, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_7
    if-ge v5, v3, :cond_14

    .line 50
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/e$while$for;

    invoke-static {v0}, Lfreemarker/core/e$while$for;->if(Lfreemarker/core/e$while$for;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 51
    :cond_14
    new-instance v0, Landroid/support/v4/l52;

    invoke-direct {v0, v4}, Landroid/support/v4/l52;-><init>(Ljava/util/List;)V

    return-object v0

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 52
    new-instance v0, Landroid/support/v4/vl2;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 53
    invoke-static {v6}, Lfreemarker/core/e$while;->u(I)[Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error while sorting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public static u(I)[Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string p0, "?sort"

    goto :goto_0

    :cond_0
    const-string p0, "?sort_by(...)"

    :goto_0
    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    const-string v1, " failed: "

    aput-object v1, v0, p0

    return-object v0
.end method

.method public static v(II)[Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string p0, "?sort"

    goto :goto_0

    :cond_0
    const-string p0, "?sort_by(...)"

    :goto_0
    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    const-string v1, " failed at sequence index "

    aput-object v1, v0, p0

    const/4 p0, 0x2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    const/4 p0, 0x3

    if-nez p1, :cond_1

    const-string p1, ": "

    goto :goto_1

    :cond_1
    const-string p1, " (0-based): "

    :goto_1
    aput-object p1, v0, p0

    return-object v0
.end method


# virtual methods
.method public r(Lfreemarker/template/TemplateSequenceModel;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lfreemarker/core/e$while;->t(Lfreemarker/template/TemplateSequenceModel;[Ljava/lang/String;)Lfreemarker/template/TemplateSequenceModel;

    move-result-object p1

    return-object p1
.end method
