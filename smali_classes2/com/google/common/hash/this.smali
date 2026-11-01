.class final Lcom/google/common/hash/this;
.super Lcom/google/common/hash/for;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/fm0;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/this$do;
    }
.end annotation


# static fields
.field public static final do:Lcom/google/common/hash/HashFunction;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/hash/this;

    invoke-direct {v0}, Lcom/google/common/hash/this;-><init>()V

    sput-object v0, Lcom/google/common/hash/this;->do:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/for;-><init>()V

    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/hash/this$do;

    invoke-direct {v0}, Lcom/google/common/hash/this$do;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Hashing.crc32c()"

    return-object v0
.end method
