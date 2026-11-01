.class Lfreemarker/core/e$goto;
.super Lfreemarker/core/volatile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "goto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/e$goto$do;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/volatile;-><init>()V

    return-void
.end method


# virtual methods
.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 4
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
    instance-of v1, v0, Lfreemarker/template/TemplateCollectionModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lfreemarker/core/e;->for(Lfreemarker/template/TemplateModel;)V

    .line 4
    new-instance v1, Lfreemarker/core/e$goto$do;

    check-cast v0, Lfreemarker/template/TemplateCollectionModel;

    invoke-direct {v1, p0, p1, v0, v2}, Lfreemarker/core/e$goto$do;-><init>(Lfreemarker/core/e$goto;Lfreemarker/core/d0;Lfreemarker/template/TemplateCollectionModel;Lfreemarker/core/e$do;)V

    return-object v1

    .line 5
    :cond_0
    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lfreemarker/core/e$goto$do;

    new-instance v3, Lfreemarker/core/m;

    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {v3, v0}, Lfreemarker/core/m;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    invoke-direct {v1, p0, p1, v3, v2}, Lfreemarker/core/e$goto$do;-><init>(Lfreemarker/core/e$goto;Lfreemarker/core/d0;Lfreemarker/template/TemplateCollectionModel;Lfreemarker/core/e$do;)V

    return-object v1

    .line 7
    :cond_1
    new-instance v1, Lfreemarker/core/t2;

    iget-object v2, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/t2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    throw v1
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0}, Lfreemarker/core/h0;->switch()V

    return-void
.end method
