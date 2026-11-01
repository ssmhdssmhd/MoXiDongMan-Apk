.class Lfreemarker/core/l4;
.super Lfreemarker/core/i4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/l4$if;,
        Lfreemarker/core/l4$for;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/i4;-><init>()V

    return-void
.end method

.method private if(Lfreemarker/core/b4;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/j4;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lfreemarker/core/b4;->package()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p1, v2}, Lfreemarker/core/b4;->default(I)Lfreemarker/core/b4;

    move-result-object v3

    invoke-direct {p0, v3}, Lfreemarker/core/l4;->if(Lfreemarker/core/b4;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lfreemarker/core/b4;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :try_start_0
    new-instance v0, Lfreemarker/core/l4$for;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lfreemarker/core/l4$for;-><init>(Lfreemarker/core/b4;Lfreemarker/core/l4$do;)V

    invoke-virtual {p1, v1, v0}, Lfreemarker/core/b4;->public(ILfreemarker/core/b4;)V
    :try_end_0
    .catch Lfreemarker/core/h3; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Lfreemarker/core/j4;

    const-string v1, "Unexpected error; see cause"

    invoke-direct {v0, v1, p1}, Lfreemarker/core/j4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public do(Lfreemarker/template/static;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/j4;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lfreemarker/template/static;->o1()Lfreemarker/core/b4;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/core/l4;->if(Lfreemarker/core/b4;)V

    return-void
.end method
