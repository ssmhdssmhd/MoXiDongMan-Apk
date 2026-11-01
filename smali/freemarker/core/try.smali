.class public final Lfreemarker/core/try;
.super Lfreemarker/core/g4;
.source "SourceFile"


# instance fields
.field private final do:Ljava/lang/String;

.field private final if:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/g4;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/try;->do:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lfreemarker/core/try;->if:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lfreemarker/core/g4;-><init>()V

    .line 5
    iput-object p1, p0, Lfreemarker/core/try;->do:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lfreemarker/core/try;->if:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;Ljava/util/Locale;Lfreemarker/core/d0;)Lfreemarker/core/f4;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lfreemarker/core/e4;->do(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/try;->if:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    :goto_0
    if-nez v0, :cond_1

    .line 4
    invoke-static {v1}, Landroid/support/v4/xk2;->do(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lfreemarker/core/try;->if:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lfreemarker/core/try;->do:Ljava/lang/String;

    .line 7
    :cond_2
    invoke-virtual {p3, v0, p2}, Lfreemarker/core/d0;->z2(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/core/f4;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/p52; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 8
    new-instance p3, Lfreemarker/core/for;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create format based on target format string,  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {p1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Reason given: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lfreemarker/core/for;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p3

    :goto_2
    goto :goto_1
.end method
