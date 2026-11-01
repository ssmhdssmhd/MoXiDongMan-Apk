.class public Lfreemarker/core/y;
.super Lfreemarker/core/p4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/y$do;
    }
.end annotation


# static fields
.field public static final break:Ljava/lang/String; = "[\u2026]"

.field public static final catch:Landroid/support/v4/j52;

.field public static final class:D = 0.75

.field private static final const:I = 0x3

.field public static final final:Lfreemarker/core/y;

.field public static final super:Lfreemarker/core/y;

.field public static final this:Ljava/lang/String; = "[...]"


# instance fields
.field private final case:Z

.field private final do:Lfreemarker/template/TemplateScalarModel;

.field private final else:D

.field private final for:Z

.field private final goto:Z

.field private final if:I

.field private final new:Lfreemarker/core/TemplateMarkupOutputModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfreemarker/core/TemplateMarkupOutputModel<",
            "*>;"
        }
    .end annotation
.end field

.field private final try:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lfreemarker/core/q0;->do:Lfreemarker/core/q0;

    const-string v1, "<span class=\'truncateTerminator\'>[&#8230;]</span>"

    invoke-virtual {v0, v1}, Lfreemarker/core/p;->while(Ljava/lang/String;)Landroid/support/v4/ep;

    move-result-object v0

    check-cast v0, Landroid/support/v4/j52;

    sput-object v0, Lfreemarker/core/y;->catch:Landroid/support/v4/j52;
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance v1, Lfreemarker/core/y;

    const-string v2, "[...]"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lfreemarker/core/y;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateMarkupOutputModel;Z)V

    sput-object v1, Lfreemarker/core/y;->final:Lfreemarker/core/y;

    .line 3
    new-instance v1, Lfreemarker/core/y;

    const-string v2, "[\u2026]"

    invoke-direct {v1, v2, v0, v3}, Lfreemarker/core/y;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateMarkupOutputModel;Z)V

    sput-object v1, Lfreemarker/core/y;->super:Lfreemarker/core/y;

    return-void

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/core/TemplateMarkupOutputModel;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfreemarker/core/TemplateMarkupOutputModel<",
            "*>;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v7, p3

    .line 1
    invoke-direct/range {v0 .. v8}, Lfreemarker/core/y;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lfreemarker/core/TemplateMarkupOutputModel;Ljava/lang/Integer;Ljava/lang/Boolean;ZLjava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lfreemarker/core/TemplateMarkupOutputModel;Ljava/lang/Integer;Ljava/lang/Boolean;ZLjava/lang/Double;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lfreemarker/core/TemplateMarkupOutputModel<",
            "*>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Z",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lfreemarker/core/p4;-><init>()V

    const-string v0, "defaultTerminator"

    .line 4
    invoke-static {v0, p1}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    new-instance v0, Landroid/support/v4/ez1;

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lfreemarker/core/y;->do:Lfreemarker/template/TemplateScalarModel;

    if-eqz p2, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    :goto_0
    iput p2, p0, Lfreemarker/core/y;->if:I

    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lfreemarker/core/y;->return(Ljava/lang/String;)Z

    move-result p1

    :goto_1
    iput-boolean p1, p0, Lfreemarker/core/y;->for:Z
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    iput-object p4, p0, Lfreemarker/core/y;->new:Lfreemarker/core/TemplateMarkupOutputModel;

    if-eqz p4, :cond_4

    if-eqz p5, :cond_2

    .line 11
    :try_start_1
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p0, p4}, Lfreemarker/core/y;->while(Lfreemarker/core/TemplateMarkupOutputModel;)I

    move-result p1

    .line 13
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/y;->try:Ljava/lang/Integer;

    if-eqz p6, :cond_3

    .line 14
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {p0, p4}, Lfreemarker/core/y;->import(Lfreemarker/core/TemplateMarkupOutputModel;)Z

    move-result p1

    :goto_3
    iput-boolean p1, p0, Lfreemarker/core/y;->case:Z
    :try_end_1
    .catch Landroid/support/v4/k52; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Failed to examine defaultMTerminator"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lfreemarker/core/y;->try:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lfreemarker/core/y;->case:Z

    :goto_4
    if-nez p8, :cond_5

    const-wide/high16 p1, 0x3fe8000000000000L    # 0.75

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p8

    goto :goto_5

    .line 20
    :cond_5
    invoke-virtual {p8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmpg-double p5, p1, p3

    if-ltz p5, :cond_6

    invoke-virtual {p8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    cmpl-double p5, p1, p3

    if-gtz p5, :cond_6

    .line 21
    :goto_5
    invoke-virtual {p8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Lfreemarker/core/y;->else:D

    .line 22
    iput-boolean p7, p0, Lfreemarker/core/y;->goto:Z

    return-void

    .line 23
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wordBoundaryMinLength must be between 0.0 and 1.0 (inclusive)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 24
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Failed to examine defaultTerminator"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    .line 2
    invoke-direct/range {v0 .. v8}, Lfreemarker/core/y;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lfreemarker/core/TemplateMarkupOutputModel;Ljava/lang/Integer;Ljava/lang/Boolean;ZLjava/lang/Double;)V

    return-void
.end method

.method private abstract(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/y$do;Z)Lfreemarker/template/TemplateModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 2
    new-instance p2, Landroid/support/v4/ez1;

    invoke-direct {p2, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_0
    if-ltz p2, :cond_9

    if-nez p3, :cond_2

    if-eqz p6, :cond_1

    .line 3
    iget-object p3, p0, Lfreemarker/core/y;->new:Lfreemarker/core/TemplateMarkupOutputModel;

    if-eqz p3, :cond_1

    .line 4
    iget-object p4, p0, Lfreemarker/core/y;->try:Ljava/lang/Integer;

    .line 5
    iget-boolean p6, p0, Lfreemarker/core/y;->case:Z

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    goto :goto_0

    .line 6
    :cond_1
    iget-object p3, p0, Lfreemarker/core/y;->do:Lfreemarker/template/TemplateScalarModel;

    .line 7
    iget p4, p0, Lfreemarker/core/y;->if:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 8
    iget-boolean p6, p0, Lfreemarker/core/y;->for:Z

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    :goto_0
    move-object v5, p6

    goto :goto_2

    :cond_2
    if-eqz p4, :cond_4

    .line 9
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p6

    if-ltz p6, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "terminatorLength can\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    invoke-direct {p0, p3}, Lfreemarker/core/y;->native(Lfreemarker/template/TemplateModel;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :goto_1
    const/4 p6, 0x0

    goto :goto_0

    .line 12
    :goto_2
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p5

    .line 13
    invoke-direct/range {v0 .. v6}, Lfreemarker/core/y;->continue(Ljava/lang/String;ILfreemarker/template/TemplateModel;ILjava/lang/Boolean;Lfreemarker/core/y$do;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-nez p2, :cond_5

    goto :goto_3

    .line 15
    :cond_5
    instance-of p2, p3, Lfreemarker/template/TemplateScalarModel;

    if-eqz p2, :cond_6

    .line 16
    check-cast p3, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p3}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    new-instance p2, Landroid/support/v4/ez1;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 18
    :cond_6
    instance-of p2, p3, Lfreemarker/core/TemplateMarkupOutputModel;

    if-eqz p2, :cond_7

    .line 19
    check-cast p3, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 20
    invoke-interface {p3}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/y1;

    move-result-object p2

    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lfreemarker/core/y1;->goto(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lfreemarker/core/y1;->try(Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p1

    return-object p1

    .line 22
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported terminator type: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {p3}, Lfreemarker/template/utility/if;->case(Lfreemarker/template/TemplateModel;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    return-object p3

    .line 24
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxLength can\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private continue(Ljava/lang/String;ILfreemarker/template/TemplateModel;ILjava/lang/Boolean;Lfreemarker/core/y$do;)Ljava/lang/StringBuilder;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    sub-int v5, v2, p4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 1
    invoke-direct {v0, v1, v5}, Lfreemarker/core/y;->private(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x0

    if-gez v7, :cond_0

    return-object v8

    .line 2
    :cond_0
    sget-object v9, Lfreemarker/core/y$do;->AUTO:Lfreemarker/core/y$do;

    const/16 v10, 0x20

    const/4 v11, 0x0

    if-ne v4, v9, :cond_1

    iget-wide v12, v0, Lfreemarker/core/y;->else:D

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v16, v12, v14

    if-ltz v16, :cond_2

    :cond_1
    sget-object v12, Lfreemarker/core/y$do;->WORD_BOUNDARY:Lfreemarker/core/y$do;

    if-ne v4, v12, :cond_e

    .line 3
    :cond_2
    iget-boolean v12, v0, Lfreemarker/core/y;->goto:Z

    if-eqz v12, :cond_3

    add-int/lit8 v12, p4, 0x1

    goto :goto_0

    :cond_3
    move/from16 v12, p4

    :goto_0
    if-ne v4, v9, :cond_4

    int-to-double v13, v2

    .line 4
    iget-wide v8, v0, Lfreemarker/core/y;->else:D

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v8

    .line 5
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    sub-int/2addr v8, v12

    sub-int/2addr v8, v6

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    sub-int/2addr v2, v12

    sub-int/2addr v2, v6

    .line 6
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v13, v2, 0x1

    if-le v9, v13, :cond_5

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    goto :goto_2

    :cond_5
    const/4 v9, 0x1

    :goto_2
    if-lt v2, v8, :cond_b

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 9
    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v14

    if-nez v14, :cond_a

    if-eqz v9, :cond_a

    .line 10
    iget-boolean v9, v0, Lfreemarker/core/y;->goto:Z

    if-nez v9, :cond_8

    invoke-static {v13}, Lfreemarker/core/y;->switch(C)Z

    move-result v9

    if-eqz v9, :cond_8

    if-nez p5, :cond_6

    .line 11
    invoke-direct {v0, v3}, Lfreemarker/core/y;->public(Lfreemarker/template/TemplateModel;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_3

    :cond_6
    move-object/from16 v9, p5

    .line 12
    :goto_3
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_9

    :goto_4
    if-lt v2, v8, :cond_7

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lfreemarker/core/y;->default(C)Z

    move-result v13

    if-eqz v13, :cond_7

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_7
    if-ge v2, v8, :cond_9

    goto :goto_5

    :cond_8
    move-object/from16 v9, p5

    .line 14
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    add-int/2addr v2, v6

    add-int/2addr v12, v2

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 15
    invoke-virtual {v8, v1, v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 16
    iget-boolean v2, v0, Lfreemarker/core/y;->goto:Z

    if-eqz v2, :cond_c

    .line 17
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_a
    add-int/lit8 v2, v2, -0x1

    move v9, v14

    goto :goto_2

    :cond_b
    move-object/from16 v9, p5

    :goto_5
    const/4 v8, 0x0

    :cond_c
    :goto_6
    if-nez v8, :cond_d

    .line 18
    sget-object v2, Lfreemarker/core/y$do;->WORD_BOUNDARY:Lfreemarker/core/y$do;

    if-eq v4, v2, :cond_d

    sget-object v2, Lfreemarker/core/y$do;->AUTO:Lfreemarker/core/y$do;

    if-ne v4, v2, :cond_f

    iget-wide v12, v0, Lfreemarker/core/y;->else:D

    const-wide/16 v16, 0x0

    cmpl-double v2, v12, v16

    if-nez v2, :cond_f

    :cond_d
    return-object v8

    :cond_e
    move-object/from16 v9, p5

    :cond_f
    if-ne v7, v5, :cond_10

    .line 19
    iget-boolean v2, v0, Lfreemarker/core/y;->goto:Z

    if-eqz v2, :cond_10

    invoke-direct {v0, v1, v7}, Lfreemarker/core/y;->finally(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_10

    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_10

    const/4 v2, 0x0

    return-object v2

    :cond_10
    const/4 v2, 0x0

    .line 20
    :goto_7
    invoke-direct {v0, v1, v7}, Lfreemarker/core/y;->private(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_11

    return-object v2

    .line 21
    :cond_11
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lfreemarker/core/y;->switch(C)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-boolean v2, v0, Lfreemarker/core/y;->goto:Z

    if-eqz v2, :cond_12

    invoke-direct {v0, v1, v4}, Lfreemarker/core/y;->finally(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_12
    if-nez v9, :cond_13

    .line 22
    invoke-direct {v0, v3}, Lfreemarker/core/y;->public(Lfreemarker/template/TemplateModel;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 23
    :cond_13
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 24
    invoke-direct {v0, v1, v4}, Lfreemarker/core/y;->package(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_14

    const/4 v5, 0x0

    return-object v5

    :cond_14
    const/4 v5, 0x0

    move v7, v2

    const/4 v2, 0x1

    goto :goto_8

    :cond_15
    const/4 v5, 0x0

    move v7, v4

    const/4 v2, 0x0

    :goto_8
    if-nez v2, :cond_18

    .line 25
    iget-boolean v2, v0, Lfreemarker/core/y;->goto:Z

    if-eqz v2, :cond_16

    invoke-direct {v0, v1, v7}, Lfreemarker/core/y;->finally(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_9

    :cond_16
    const/4 v2, 0x0

    .line 26
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v7, v6

    add-int v4, v7, v2

    add-int v4, v4, p4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 27
    invoke-virtual {v3, v1, v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_17

    .line 28
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_17
    return-object v3

    :cond_18
    move-object v2, v5

    goto :goto_7
.end method

.method private static default(C)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lfreemarker/core/y;->switch(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static else(Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_b

    add-int/lit8 v3, v2, 0x1

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3c

    if-ne v2, v4, :cond_8

    const-string v2, "!--"

    .line 3
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    const/16 v4, 0x3e

    if-eqz v2, :cond_2

    add-int/lit8 v3, v3, 0x3

    :goto_1
    add-int/lit8 v2, v3, 0x2

    if-ge v2, v0, :cond_1

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x3

    if-lt v3, v0, :cond_7

    goto/16 :goto_4

    :cond_2
    const-string v2, "![CDATA["

    .line 5
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v3, v3, 0x8

    if-ge v3, v0, :cond_4

    .line 6
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x5d

    if-ne v2, v5, :cond_3

    add-int/lit8 v6, v3, 0x2

    if-ge v6, v0, :cond_3

    add-int/lit8 v7, v3, 0x1

    .line 7
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_4

    .line 8
    :cond_3
    invoke-static {v2}, Lfreemarker/core/y;->switch(C)Z

    move-result p0

    return p0

    :cond_4
    add-int/lit8 v3, v3, 0x3

    if-lt v3, v0, :cond_7

    goto :goto_4

    :cond_5
    :goto_2
    if-ge v3, v0, :cond_6

    .line 9
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v0, :cond_7

    goto :goto_4

    :cond_7
    move v2, v3

    goto :goto_0

    :cond_8
    const/16 v1, 0x26

    if-ne v2, v1, :cond_a

    move v1, v3

    :goto_3
    if-ge v1, v0, :cond_9

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3b

    if-eq v2, v4, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 11
    :cond_9
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/core/y;->throws(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 12
    :cond_a
    invoke-static {v2}, Lfreemarker/core/y;->switch(C)Z

    move-result p0

    return p0

    :cond_b
    :goto_4
    return v1
.end method

.method private extends(Lfreemarker/core/y1;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/core/y1<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfreemarker/core/q0;

    if-nez v0, :cond_1

    instance-of p1, p1, Lfreemarker/core/v4;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private finally(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private native(Lfreemarker/template/TemplateModel;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz v0, :cond_0

    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    .line 2
    invoke-interface {p1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p1, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 3
    invoke-virtual {p0, p1}, Lfreemarker/core/y;->while(Lfreemarker/core/TemplateMarkupOutputModel;)I

    move-result p1

    :goto_0
    return p1
.end method

.method private package(Ljava/lang/String;I)I
    .locals 1

    :goto_0
    if-ltz p2, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lfreemarker/core/y;->switch(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method private private(Ljava/lang/String;I)I
    .locals 1

    :goto_0
    if-ltz p2, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method private public(Lfreemarker/template/TemplateModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz v0, :cond_0

    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    .line 2
    invoke-interface {p1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/core/y;->return(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p1, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 3
    invoke-virtual {p0, p1}, Lfreemarker/core/y;->import(Lfreemarker/core/TemplateMarkupOutputModel;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private static switch(C)Z
    .locals 1

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2026

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static this(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x78

    if-eq v1, v3, :cond_1

    const/16 v3, 0x58

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const/4 v0, 0x2

    .line 2
    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eqz v1, :cond_3

    const/16 v5, 0x10

    goto :goto_3

    :cond_3
    const/16 v5, 0xa

    :goto_3
    mul-int v2, v2, v5

    const/16 v5, 0x30

    if-lt v3, v5, :cond_4

    const/16 v5, 0x39

    if-gt v3, v5, :cond_4

    add-int/lit8 v3, v3, -0x30

    :goto_4
    add-int/2addr v2, v3

    goto :goto_6

    :cond_4
    if-eqz v1, :cond_5

    const/16 v5, 0x61

    if-lt v3, v5, :cond_5

    const/16 v5, 0x66

    if-gt v3, v5, :cond_5

    add-int/lit8 v3, v3, -0x61

    :goto_5
    add-int/2addr v3, v4

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_6

    const/16 v5, 0x41

    if-lt v3, v5, :cond_6

    const/16 v5, 0x46

    if-gt v3, v5, :cond_6

    add-int/lit8 v3, v3, -0x41

    goto :goto_5

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/4 p0, -0x1

    return p0

    :cond_7
    return v2
.end method

.method public static throw(Ljava/lang/String;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_b

    add-int/lit8 v3, v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x3c

    if-ne v1, v4, :cond_7

    const-string v1, "!--"

    .line 3
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    const/16 v4, 0x3e

    if-eqz v1, :cond_2

    add-int/lit8 v3, v3, 0x3

    :goto_1
    add-int/lit8 v1, v3, 0x2

    if-ge v1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x3

    if-lt v3, v0, :cond_a

    goto :goto_5

    :cond_2
    const-string v1, "![CDATA["

    .line 5
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v3, v3, 0x8

    :goto_2
    if-ge v3, v0, :cond_4

    .line 6
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x5d

    if-ne v1, v5, :cond_3

    add-int/lit8 v1, v3, 0x2

    if-ge v1, v0, :cond_3

    add-int/lit8 v6, v3, 0x1

    .line 7
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x3

    if-lt v3, v0, :cond_a

    goto :goto_5

    :cond_5
    :goto_3
    if-ge v3, v0, :cond_6

    .line 8
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v0, :cond_a

    goto :goto_5

    :cond_7
    const/16 v4, 0x26

    if-ne v1, v4, :cond_9

    :goto_4
    if-ge v3, v0, :cond_8

    .line 9
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x3b

    if-eq v1, v4, :cond_8

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    if-lt v3, v0, :cond_a

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    :cond_a
    move v1, v3

    goto/16 :goto_0

    :cond_b
    :goto_5
    return v2
.end method

.method public static throws(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-le v0, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_2

    .line 2
    invoke-static {p0}, Lfreemarker/core/y;->this(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x2026

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    const-string v0, "hellip"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "period"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public break()Lfreemarker/core/TemplateMarkupOutputModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfreemarker/core/TemplateMarkupOutputModel<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/y;->new:Lfreemarker/core/TemplateMarkupOutputModel;

    return-object v0
.end method

.method public case(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    sget-object v5, Lfreemarker/core/y$do;->WORD_BOUNDARY:Lfreemarker/core/y$do;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/y;->abstract(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/y$do;Z)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public catch()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/y;->try:Ljava/lang/Integer;

    return-object v0
.end method

.method public class()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/y;->case:Z

    return v0
.end method

.method public const()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/y;->do:Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public do(Ljava/lang/String;ILfreemarker/template/TemplateScalarModel;Ljava/lang/Integer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateScalarModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    sget-object v5, Lfreemarker/core/y$do;->AUTO:Lfreemarker/core/y$do;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/y;->abstract(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/y$do;Z)Lfreemarker/template/TemplateModel;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    return-object p1
.end method

.method public final()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/y;->if:I

    return v0
.end method

.method public for(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    sget-object v5, Lfreemarker/core/y$do;->CHAR_BOUNDARY:Lfreemarker/core/y$do;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/y;->abstract(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/y$do;Z)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public goto()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/y;->goto:Z

    return v0
.end method

.method public if(Ljava/lang/String;ILfreemarker/template/TemplateScalarModel;Ljava/lang/Integer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateScalarModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    sget-object v5, Lfreemarker/core/y$do;->CHAR_BOUNDARY:Lfreemarker/core/y$do;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/y;->abstract(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/y$do;Z)Lfreemarker/template/TemplateModel;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    return-object p1
.end method

.method public import(Lfreemarker/core/TemplateMarkupOutputModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/y1;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/y;->extends(Lfreemarker/core/y1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/y1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfreemarker/core/y1;->this(Lfreemarker/core/TemplateMarkupOutputModel;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/core/y;->else(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public new(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    sget-object v5, Lfreemarker/core/y$do;->AUTO:Lfreemarker/core/y$do;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/y;->abstract(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/y$do;Z)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public return(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const-string v0, "."

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u2026"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lfreemarker/core/y;->else:D

    return-wide v0
.end method

.method public super()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/y;->for:Z

    return v0
.end method

.method public try(Ljava/lang/String;ILfreemarker/template/TemplateScalarModel;Ljava/lang/Integer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateScalarModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    sget-object v5, Lfreemarker/core/y$do;->WORD_BOUNDARY:Lfreemarker/core/y$do;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/y;->abstract(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/y$do;Z)Lfreemarker/template/TemplateModel;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    return-object p1
.end method

.method public while(Lfreemarker/core/TemplateMarkupOutputModel;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/core/TemplateMarkupOutputModel<",
            "*>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/y1;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lfreemarker/core/y;->extends(Lfreemarker/core/y1;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lfreemarker/core/y1;->this(Lfreemarker/core/TemplateMarkupOutputModel;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/core/y;->throw(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    return p1
.end method
