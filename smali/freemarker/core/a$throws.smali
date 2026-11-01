.class Lfreemarker/core/a$throws;
.super Lfreemarker/core/return;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "throws"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/return;-><init>()V

    return-void
.end method


# virtual methods
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
    instance-of v0, v3, Lfreemarker/core/x1;

    if-eqz v0, :cond_0

    .line 3
    check-cast v3, Lfreemarker/core/x1;

    invoke-virtual {p1, v3}, Lfreemarker/core/d0;->T1(Lfreemarker/core/x1;)Lfreemarker/core/d0$this;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lfreemarker/core/r4;

    iget-object v2, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v4, Lfreemarker/core/x1;

    aput-object v4, v5, v1

    const-string v4, "macro or function"

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/d0;)V

    throw v0
.end method
