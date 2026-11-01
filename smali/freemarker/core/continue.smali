.class abstract Lfreemarker/core/continue;
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
    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    invoke-virtual {p0, v0}, Lfreemarker/core/continue;->r(Lfreemarker/template/TemplateSequenceModel;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v1, Lfreemarker/core/s2;

    iget-object v2, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/s2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    throw v1
.end method

.method public abstract r(Lfreemarker/template/TemplateSequenceModel;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation
.end method
