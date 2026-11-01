.class Lfreemarker/core/e$final;
.super Lfreemarker/core/volatile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "final"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/e$final$if;,
        Lfreemarker/core/e$final$do;
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

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Lfreemarker/core/e;->if(Lfreemarker/template/TemplateModel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lfreemarker/core/e$final$if;

    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {v1, p0, v0, p1, v2}, Lfreemarker/core/e$final$if;-><init>(Lfreemarker/core/e$final;Lfreemarker/template/TemplateSequenceModel;Lfreemarker/core/d0;Lfreemarker/core/e$do;)V

    return-object v1

    .line 4
    :cond_0
    instance-of v1, v0, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Lfreemarker/core/e$final$do;

    check-cast v0, Lfreemarker/template/TemplateCollectionModel;

    invoke-direct {v1, p0, v0, p1, v2}, Lfreemarker/core/e$final$do;-><init>(Lfreemarker/core/e$final;Lfreemarker/template/TemplateCollectionModel;Lfreemarker/core/d0;Lfreemarker/core/e$do;)V

    return-object v1

    .line 6
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
