.class abstract Lfreemarker/core/throws;
.super Lfreemarker/core/return;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/return;-><init>()V

    return-void
.end method


# virtual methods
.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 3
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
    instance-of v1, v0, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lfreemarker/template/TemplateHashModelEx;

    invoke-virtual {p0, v0, p1}, Lfreemarker/core/throws;->r(Lfreemarker/template/TemplateHashModelEx;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v1, Lfreemarker/core/j2;

    iget-object v2, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/j2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    throw v1
.end method

.method public abstract r(Lfreemarker/template/TemplateHashModelEx;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;,
            Lfreemarker/core/b1;
        }
    .end annotation
.end method

.method public s(Ljava/lang/String;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Lfreemarker/core/b1;
    .locals 5

    .line 1
    invoke-virtual {p3}, Lfreemarker/core/d0;->H1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lfreemarker/core/b1;->FAST_INSTANCE:Lfreemarker/core/b1;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lfreemarker/core/b1;

    new-instance v1, Lfreemarker/core/z4;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "The exteneded hash (of class "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x2

    const-string v3, ") has returned null for its \""

    aput-object v3, v2, p2

    const/4 p2, 0x3

    aput-object p1, v2, p2

    const/4 p1, 0x4

    const-string p2, "\" property. This is maybe a bug. The extended hash was returned by this expression:"

    aput-object p2, v2, p1

    invoke-direct {v1, v2}, Lfreemarker/core/z4;-><init>([Ljava/lang/Object;)V

    iget-object p1, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    .line 5
    invoke-virtual {v1, p1}, Lfreemarker/core/z4;->if(Lfreemarker/core/h0;)Lfreemarker/core/z4;

    move-result-object p1

    invoke-direct {v0, p1, p3, p0}, Lfreemarker/core/b1;-><init>(Lfreemarker/core/z4;Lfreemarker/core/d0;Lfreemarker/core/h0;)V

    return-object v0
.end method
