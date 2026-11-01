.class final Lorg/mozilla/classfile/for$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/classfile/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# instance fields
.field public final do:[B

.field public final synthetic if:Lorg/mozilla/classfile/for;


# direct methods
.method public varargs constructor <init>(Lorg/mozilla/classfile/for;Lorg/mozilla/classfile/for$for;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lorg/mozilla/classfile/for$do;->if:Lorg/mozilla/classfile/for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p3

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    .line 3
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mozilla/classfile/for$do;->do:[B

    .line 4
    invoke-static {p1}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/mozilla/classfile/try;->catch(Lorg/mozilla/classfile/for$for;)S

    move-result p2

    const/4 v2, 0x0

    invoke-static {p2, v0, v2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    .line 5
    array-length p2, p3

    invoke-static {p2, v0, v1}, Lorg/mozilla/classfile/for;->V(I[BI)I

    .line 6
    :goto_0
    array-length p2, p3

    if-ge v2, p2, :cond_0

    .line 7
    invoke-static {p1}, Lorg/mozilla/classfile/for;->throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;

    move-result-object p2

    aget-object v0, p3, v2

    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/try;->case(Ljava/lang/Object;)I

    move-result p2

    iget-object v0, p0, Lorg/mozilla/classfile/for$do;->do:[B

    mul-int/lit8 v1, v2, 0x2

    add-int/lit8 v1, v1, 0x4

    invoke-static {p2, v0, v1}, Lorg/mozilla/classfile/for;->V(I[BI)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/mozilla/classfile/for$do;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/classfile/for$do;->do:[B

    check-cast p1, Lorg/mozilla/classfile/for$do;

    iget-object p1, p1, Lorg/mozilla/classfile/for$do;->do:[B

    .line 2
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for$do;->do:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method
