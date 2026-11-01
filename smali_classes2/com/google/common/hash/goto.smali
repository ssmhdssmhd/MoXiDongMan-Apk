.class final Lcom/google/common/hash/goto;
.super Lcom/google/common/hash/for;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Landroid/support/v4/fm0;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/goto$if;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final bits:I

.field private final checksumSupplier:Lcom/google/common/hash/ImmutableSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/hash/ImmutableSupplier<",
            "+",
            "Ljava/util/zip/Checksum;",
            ">;"
        }
    .end annotation
.end field

.field private final toString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/common/hash/ImmutableSupplier;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/hash/ImmutableSupplier<",
            "+",
            "Ljava/util/zip/Checksum;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/for;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/hash/ImmutableSupplier;

    iput-object p1, p0, Lcom/google/common/hash/goto;->checksumSupplier:Lcom/google/common/hash/ImmutableSupplier;

    const/16 p1, 0x20

    if-eq p2, p1, :cond_1

    const/16 p1, 0x40

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v0, "bits (%s) must be either 32 or 64"

    .line 3
    invoke-static {p1, v0, p2}, Landroid/support/v4/af1;->catch(ZLjava/lang/String;I)V

    .line 4
    iput p2, p0, Lcom/google/common/hash/goto;->bits:I

    .line 5
    invoke-static {p3}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/hash/goto;->toString:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$100(Lcom/google/common/hash/goto;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/hash/goto;->bits:I

    return p0
.end method


# virtual methods
.method public bits()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/hash/goto;->bits:I

    return v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/hash/goto$if;

    iget-object v1, p0, Lcom/google/common/hash/goto;->checksumSupplier:Lcom/google/common/hash/ImmutableSupplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/Checksum;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/common/hash/goto$if;-><init>(Lcom/google/common/hash/goto;Ljava/util/zip/Checksum;Lcom/google/common/hash/goto$do;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/goto;->toString:Ljava/lang/String;

    return-object v0
.end method
