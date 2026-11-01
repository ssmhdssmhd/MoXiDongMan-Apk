.class Lorg/apache/commons/lang3/builder/do$import;
.super Landroid/support/v4/r00;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/builder/do;->new(Ljava/lang/String;FF)Lorg/apache/commons/lang3/builder/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/r00<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final synthetic this$0:Lorg/apache/commons/lang3/builder/do;

.field public final synthetic val$lhs:F

.field public final synthetic val$rhs:F


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/do$import;->this$0:Lorg/apache/commons/lang3/builder/do;

    iput p3, p0, Lorg/apache/commons/lang3/builder/do$import;->val$lhs:F

    iput p4, p0, Lorg/apache/commons/lang3/builder/do$import;->val$rhs:F

    invoke-direct {p0, p2}, Landroid/support/v4/r00;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/Float;
    .locals 1

    .line 2
    iget v0, p0, Lorg/apache/commons/lang3/builder/do$import;->val$lhs:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/do$import;->getLeft()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Ljava/lang/Float;
    .locals 1

    .line 2
    iget v0, p0, Lorg/apache/commons/lang3/builder/do$import;->val$rhs:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/do$import;->getRight()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
