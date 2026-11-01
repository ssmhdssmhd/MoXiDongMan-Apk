.class Lfreemarker/core/a$for;
.super Lfreemarker/core/a$do;
.source "SourceFile"

# interfaces
.implements Lfreemarker/core/ICIChainMember;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/a$for$do;
    }
.end annotation


# instance fields
.field private final final:Lfreemarker/core/a$for$do;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/a$do;-><init>()V

    .line 2
    new-instance v0, Lfreemarker/core/a$for$do;

    invoke-direct {v0}, Lfreemarker/core/a$for$do;-><init>()V

    iput-object v0, p0, Lfreemarker/core/a$for;->final:Lfreemarker/core/a$for$do;

    return-void
.end method


# virtual methods
.method public getMinimumICIVersion()I
    .locals 1

    .line 1
    sget v0, Landroid/support/v4/ul2;->new:I

    return v0
.end method

.method public getPreviousICIChainMember()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/a$for;->final:Lfreemarker/core/a$for$do;

    return-object v0
.end method

.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 2
    instance-of v0, v3, Lfreemarker/template/TemplateNumberModel;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, v3}, Lfreemarker/core/a$for;->r(Lfreemarker/core/d0;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    instance-of v0, v3, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v0, :cond_2

    .line 5
    new-instance p1, Landroid/support/v4/ez1;

    check-cast v3, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {v3}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "true"

    goto :goto_0

    :cond_1
    const-string v0, "false"

    :goto_0
    invoke-direct {p1, v0}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_2
    new-instance v0, Lfreemarker/core/r4;

    iget-object v2, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v4, Lfreemarker/template/TemplateNumberModel;

    aput-object v4, v5, v1

    const/4 v1, 0x1

    const-class v4, Lfreemarker/template/TemplateBooleanModel;

    aput-object v4, v5, v1

    const-string v4, "number or boolean"

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/d0;)V

    throw v0
.end method

.method public r(Lfreemarker/core/d0;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    check-cast p2, Lfreemarker/template/TemplateNumberModel;

    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-static {p2, v0}, Lfreemarker/core/f0;->import(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/h0;)Ljava/lang/Number;

    move-result-object p2

    .line 2
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_7

    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p2, Ljava/lang/Double;

    const-string v1, "NaN"

    const-string v2, "-INF"

    const-string v3, "INF"

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, v4, v6

    if-nez v0, :cond_1

    .line 5
    new-instance p1, Landroid/support/v4/ez1;

    invoke-direct {p1, v3}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, v4, v6

    if-nez v0, :cond_2

    .line 6
    new-instance p1, Landroid/support/v4/ez1;

    invoke-direct {p1, v2}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 7
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8
    new-instance p1, Landroid/support/v4/ez1;

    invoke-direct {p1, v1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 9
    :cond_3
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v4, v0, v4

    if-nez v4, :cond_4

    .line 11
    new-instance p1, Landroid/support/v4/ez1;

    invoke-direct {p1, v3}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_4
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v3, v0, v3

    if-nez v3, :cond_5

    .line 12
    new-instance p1, Landroid/support/v4/ez1;

    invoke-direct {p1, v2}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 13
    :cond_5
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    new-instance p1, Landroid/support/v4/ez1;

    invoke-direct {p1, v1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 15
    :cond_6
    new-instance v0, Landroid/support/v4/ez1;

    invoke-virtual {p1}, Lfreemarker/core/d0;->s1()Ljava/text/NumberFormat;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 16
    :cond_7
    :goto_0
    new-instance p1, Landroid/support/v4/ez1;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
