.class abstract Lfreemarker/core/d$do;
.super Lfreemarker/core/z1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/z1;-><init>()V

    return-void
.end method


# virtual methods
.method public s(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lfreemarker/core/f0;->try(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/core/d0;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lfreemarker/core/z1;->final:Lfreemarker/core/y1;

    .line 4
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lfreemarker/core/d$do;->t(Ljava/lang/String;Lfreemarker/core/y1;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    check-cast v0, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 7
    invoke-interface {v0}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/y1;

    move-result-object p1

    if-eq p1, v1, :cond_3

    .line 8
    invoke-virtual {v1}, Landroid/support/v4/e91;->for()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1, v0}, Lfreemarker/core/y1;->break(Lfreemarker/core/TemplateMarkupOutputModel;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v1, v0}, Lfreemarker/core/y1;->goto(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p1

    return-object p1

    .line 11
    :cond_2
    new-instance v0, Landroid/support/v4/vl2;

    iget-object v2, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "The left side operand of ?"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lfreemarker/core/return;->this:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, " is in "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Landroid/support/v4/jl2;

    invoke-direct {v5, p1}, Landroid/support/v4/jl2;-><init>(Ljava/lang/Object;)V

    aput-object v5, v3, v4

    const/4 p1, 0x4

    const-string v4, " format, which differs from the current output format, "

    aput-object v4, v3, p1

    const/4 p1, 0x5

    new-instance v4, Landroid/support/v4/jl2;

    invoke-direct {v4, v1}, Landroid/support/v4/jl2;-><init>(Ljava/lang/Object;)V

    aput-object v4, v3, p1

    const/4 p1, 0x6

    const-string v1, ". Conversion wasn\'t possible."

    aput-object v1, v3, p1

    invoke-direct {v0, v2, v3}, Landroid/support/v4/vl2;-><init>(Lfreemarker/core/h0;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public abstract t(Ljava/lang/String;Lfreemarker/core/y1;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method
