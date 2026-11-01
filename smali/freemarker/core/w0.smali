.class final Lfreemarker/core/w0;
.super Lfreemarker/core/h0;
.source "SourceFile"


# instance fields
.field private final goto:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/h0;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/w0;->goto:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/w0;->for()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/w0;->goto:Ljava/lang/String;

    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/w0;->goto:Ljava/lang/String;

    invoke-static {v0}, Landroid/support/v4/yk2;->case(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public instanceof()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/w0;->goto:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->D2(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/support/v4/nl2;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Variables are not available (certainly you are in a parse-time executed directive). The name of the variable you tried to read: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lfreemarker/core/w0;->goto:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p1, v0}, Landroid/support/v4/nl2;-><init>([Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_0
    throw v0
.end method

.method public static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/w0;->goto:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p3, Lfreemarker/core/h0$do;->do:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1, p1, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lfreemarker/core/h4;->if(Lfreemarker/core/h4;)Lfreemarker/core/h4;

    return-object p1

    :cond_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p3, Lfreemarker/core/h0$do;->do:Z

    return-object p2

    .line 6
    :cond_1
    new-instance p1, Lfreemarker/core/w0;

    iget-object p2, p0, Lfreemarker/core/w0;->goto:Ljava/lang/String;

    invoke-direct {p1, p2}, Lfreemarker/core/w0;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
