.class Lorg/apache/commons/lang3/builder/do$const;
.super Landroid/support/v4/r00;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/builder/do;->break(Ljava/lang/String;[B[B)Lorg/apache/commons/lang3/builder/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/r00<",
        "[",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final synthetic this$0:Lorg/apache/commons/lang3/builder/do;

.field public final synthetic val$lhs:[B

.field public final synthetic val$rhs:[B


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/builder/do;Ljava/lang/String;[B[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/do$const;->this$0:Lorg/apache/commons/lang3/builder/do;

    iput-object p3, p0, Lorg/apache/commons/lang3/builder/do$const;->val$lhs:[B

    iput-object p4, p0, Lorg/apache/commons/lang3/builder/do$const;->val$rhs:[B

    invoke-direct {p0, p2}, Landroid/support/v4/r00;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/do$const;->getLeft()[Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()[Ljava/lang/Byte;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do$const;->val$lhs:[B

    invoke-static {v0}, Lorg/apache/commons/lang3/if;->m2([B)[Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/do$const;->getRight()[Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getRight()[Ljava/lang/Byte;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/do$const;->val$rhs:[B

    invoke-static {v0}, Lorg/apache/commons/lang3/if;->m2([B)[Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
