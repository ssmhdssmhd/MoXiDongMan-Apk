.class public abstract Lcom/google/common/base/finally;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation


# static fields
.field private static final do:Lcom/google/common/base/finally;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/base/finally$do;

    invoke-direct {v0}, Lcom/google/common/base/finally$do;-><init>()V

    sput-object v0, Lcom/google/common/base/finally;->do:Lcom/google/common/base/finally;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static if()Lcom/google/common/base/finally;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/base/finally;->do:Lcom/google/common/base/finally;

    return-object v0
.end method


# virtual methods
.method public abstract do()J
.end method
