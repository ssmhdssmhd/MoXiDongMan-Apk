.class abstract Lfreemarker/core/z0;
.super Lfreemarker/core/b4;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    return-void
.end method


# virtual methods
.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract r(Lfreemarker/core/d0;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method

.method public abstract s(ZZ)Ljava/lang/String;
.end method

.method public final switch(Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lfreemarker/core/z0;->s(ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v0}, Lfreemarker/core/z0;->s(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
