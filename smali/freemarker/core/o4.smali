.class final Lfreemarker/core/o4;
.super Lfreemarker/core/b4;
.source "SourceFile"


# static fields
.field public static final final:I = 0x0

.field public static final super:I = 0x1

.field public static final throw:I = 0x2

.field public static final while:I = 0x3


# instance fields
.field public final class:Z

.field public final const:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    .line 2
    iput-boolean p1, p0, Lfreemarker/core/o4;->class:Z

    .line 3
    iput-boolean p2, p0, Lfreemarker/core/o4;->const:Z

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/o4;->class:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lfreemarker/core/o4;->const:Z

    if-eqz v1, :cond_0

    const-string v0, "#t"

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "#lt"

    return-object v0

    .line 2
    :cond_1
    iget-boolean v0, p0, Lfreemarker/core/o4;->const:Z

    if-eqz v0, :cond_2

    const-string v0, "#rt"

    return-object v0

    :cond_2
    const-string v0, "#nt"

    return-object v0
.end method

.method public d(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lfreemarker/core/f3;->while:Lfreemarker/core/f3;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public switch(Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0x3c

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/o4;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p1, "/>"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_3

    .line 1
    iget-boolean p1, p0, Lfreemarker/core/o4;->class:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lfreemarker/core/o4;->const:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 2
    :cond_1
    iget-boolean p1, p0, Lfreemarker/core/o4;->const:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    .line 3
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
