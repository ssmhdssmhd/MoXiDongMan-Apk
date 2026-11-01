.class Lorg/apache/commons/lang3/builder/do$this;
.super Landroid/support/v4/r00;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/builder/do;->throw(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/r00<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final synthetic this$0:Lorg/apache/commons/lang3/builder/do;

.field public final synthetic val$lhs:[Ljava/lang/Object;

.field public final synthetic val$rhs:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/do$this;->this$0:Lorg/apache/commons/lang3/builder/do;

    iput-object p3, p0, Lorg/apache/commons/lang3/builder/do$this;->val$lhs:[Ljava/lang/Object;

    iput-object p4, p0, Lorg/apache/commons/lang3/builder/do$this;->val$rhs:[Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/support/v4/r00;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/do$this;->getLeft()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()[Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do$this;->val$lhs:[Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/do$this;->getRight()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRight()[Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do$this;->val$rhs:[Ljava/lang/Object;

    return-object v0
.end method
