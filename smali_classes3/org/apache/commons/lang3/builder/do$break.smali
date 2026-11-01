.class Lorg/apache/commons/lang3/builder/do$break;
.super Landroid/support/v4/r00;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/builder/do;->this(Ljava/lang/String;ZZ)Lorg/apache/commons/lang3/builder/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/r00<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final synthetic this$0:Lorg/apache/commons/lang3/builder/do;

.field public final synthetic val$lhs:Z

.field public final synthetic val$rhs:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/do$break;->this$0:Lorg/apache/commons/lang3/builder/do;

    iput-boolean p3, p0, Lorg/apache/commons/lang3/builder/do$break;->val$lhs:Z

    iput-boolean p4, p0, Lorg/apache/commons/lang3/builder/do$break;->val$rhs:Z

    invoke-direct {p0, p2}, Landroid/support/v4/r00;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do$break;->val$lhs:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/do$break;->getLeft()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/do$break;->val$rhs:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/do$break;->getRight()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
