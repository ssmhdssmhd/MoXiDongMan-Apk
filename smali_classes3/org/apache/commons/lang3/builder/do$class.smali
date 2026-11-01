.class Lorg/apache/commons/lang3/builder/do$class;
.super Landroid/support/v4/r00;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/builder/do;->do(Ljava/lang/String;BB)Lorg/apache/commons/lang3/builder/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/r00<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final synthetic this$0:Lorg/apache/commons/lang3/builder/do;

.field public final synthetic val$lhs:B

.field public final synthetic val$rhs:B


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;BB)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/do$class;->this$0:Lorg/apache/commons/lang3/builder/do;

    iput-byte p3, p0, Lorg/apache/commons/lang3/builder/do$class;->val$lhs:B

    iput-byte p4, p0, Lorg/apache/commons/lang3/builder/do$class;->val$rhs:B

    invoke-direct {p0, p2}, Landroid/support/v4/r00;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/Byte;
    .locals 1

    .line 2
    iget-byte v0, p0, Lorg/apache/commons/lang3/builder/do$class;->val$lhs:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/do$class;->getLeft()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Ljava/lang/Byte;
    .locals 1

    .line 2
    iget-byte v0, p0, Lorg/apache/commons/lang3/builder/do$class;->val$rhs:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/do$class;->getRight()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
