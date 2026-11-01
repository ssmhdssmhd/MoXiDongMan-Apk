.class Lfreemarker/core/d2;
.super Lfreemarker/template/TemplateException;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lfreemarker/core/d0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, p1}, Lfreemarker/core/d2;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/d0;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Exception;Lfreemarker/core/d0;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lfreemarker/core/d2;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/d0;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lfreemarker/core/d0;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0, p2}, Lfreemarker/core/d2;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/d0;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/d0;)V
    .locals 3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nested content (body) not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/d0;)V

    return-void
.end method

.method public static check(Lfreemarker/template/TemplateDirectiveBody;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/d2;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p0, Lfreemarker/core/d0$break;

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Lfreemarker/core/d0$break;

    invoke-virtual {p0}, Lfreemarker/core/d0$break;->do()[Lfreemarker/core/b4;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, p0, v0

    instance-of v0, v0, Lfreemarker/core/l4$for;

    if-eqz v0, :cond_2

    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    aget-object p0, p0, v1

    if-nez p0, :cond_2

    :cond_1
    return-void

    .line 4
    :cond_2
    new-instance p0, Lfreemarker/core/d2;

    invoke-static {}, Lfreemarker/core/d0;->w1()Lfreemarker/core/d0;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/d2;-><init>(Lfreemarker/core/d0;)V

    throw p0
.end method
