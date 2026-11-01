.class public Lfreemarker/cache/goto;
.super Lfreemarker/cache/native;
.source "SourceFile"


# instance fields
.field private for:Z

.field private final if:[Lfreemarker/cache/native;

.field private new:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Lfreemarker/cache/native;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/cache/native;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/cache/goto;->if:[Lfreemarker/cache/native;

    return-void
.end method


# virtual methods
.method public break(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/cache/goto;->new:Ljava/lang/String;

    return-void
.end method

.method public case()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/cache/goto;->for:Z

    return v0
.end method

.method public do(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/h52;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/i52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/cache/goto;->if:[Lfreemarker/cache/native;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p1, p2}, Lfreemarker/cache/native;->do(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/h52;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-boolean p2, p0, Lfreemarker/cache/goto;->for:Z

    if-nez p2, :cond_3

    .line 4
    new-instance p2, Landroid/support/v4/i52;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lfreemarker/cache/goto;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has found no matching choice for source name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lfreemarker/cache/goto;->new:Ljava/lang/String;

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error details: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/cache/goto;->new:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, "(Set the noMatchErrorDetails property of the factory bean to give a more specific error message. Set allowNoMatch to true if this shouldn\'t be an error.)"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/support/v4/i52;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public else()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/goto;->new:Ljava/lang/String;

    return-object v0
.end method

.method public goto(Ljava/lang/String;)Lfreemarker/cache/goto;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/cache/goto;->break(Ljava/lang/String;)V

    return-object p0
.end method

.method public new(Lfreemarker/template/do;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/cache/goto;->if:[Lfreemarker/cache/native;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p1}, Lfreemarker/cache/native;->for(Lfreemarker/template/do;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public this(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/cache/goto;->for:Z

    return-void
.end method

.method public try(Z)Lfreemarker/cache/goto;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/cache/goto;->this(Z)V

    return-object p0
.end method
