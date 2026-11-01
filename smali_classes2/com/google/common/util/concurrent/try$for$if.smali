.class public final Lcom/google/common/util/concurrent/try$for$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/try$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private final do:J

.field private final if:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/common/util/concurrent/try$for$if;->do:J

    .line 3
    invoke-static {p3}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/google/common/util/concurrent/try$for$if;->if:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public static synthetic do(Lcom/google/common/util/concurrent/try$for$if;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/common/util/concurrent/try$for$if;->do:J

    return-wide v0
.end method

.method public static synthetic if(Lcom/google/common/util/concurrent/try$for$if;)Ljava/util/concurrent/TimeUnit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/util/concurrent/try$for$if;->if:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method
