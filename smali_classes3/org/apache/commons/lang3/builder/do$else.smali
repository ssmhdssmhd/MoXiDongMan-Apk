.class Lorg/apache/commons/lang3/builder/do$else;
.super Landroid/support/v4/r00;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/builder/do;->while(Ljava/lang/String;[S[S)Lorg/apache/commons/lang3/builder/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/r00<",
        "[",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final synthetic this$0:Lorg/apache/commons/lang3/builder/do;

.field public final synthetic val$lhs:[S

.field public final synthetic val$rhs:[S


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;[S[S)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/do$else;->this$0:Lorg/apache/commons/lang3/builder/do;

    iput-object p3, p0, Lorg/apache/commons/lang3/builder/do$else;->val$lhs:[S

    iput-object p4, p0, Lorg/apache/commons/lang3/builder/do$else;->val$rhs:[S

    invoke-direct {p0, p2}, Landroid/support/v4/r00;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/do$else;->getLeft()[Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()[Ljava/lang/Short;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do$else;->val$lhs:[S

    invoke-static {v0}, Lorg/apache/commons/lang3/if;->s2([S)[Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/do$else;->getRight()[Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public getRight()[Ljava/lang/Short;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do$else;->val$rhs:[S

    invoke-static {v0}, Lorg/apache/commons/lang3/if;->s2([S)[Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method
