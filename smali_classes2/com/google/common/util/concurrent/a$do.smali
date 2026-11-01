.class abstract Lcom/google/common/util/concurrent/a$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()Lcom/google/common/util/concurrent/a$do;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/a$do$do;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/a$do$do;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract for(J)V
.end method

.method public abstract if()J
.end method
