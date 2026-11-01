.class final Lrx/internal/operators/synchronized$do;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/synchronized$do$if;,
        Lrx/internal/operators/synchronized$do$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "TT",
        "Left;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3074e6f3404b26c4L


# instance fields
.field public final group:Landroid/support/v4/dq;

.field public leftDone:Z

.field public leftId:I

.field public rightDone:Z

.field public rightId:I

.field public final rightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TTRight;>;"
        }
    .end annotation
.end field

.field public final subscriber:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lrx/internal/operators/synchronized;


# direct methods
.method public constructor <init>(Lrx/internal/operators/synchronized;Landroid/support/v4/y22;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lrx/internal/operators/synchronized$do;->this$0:Lrx/internal/operators/synchronized;

    .line 2
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iput-object p2, p0, Lrx/internal/operators/synchronized$do;->subscriber:Landroid/support/v4/y22;

    .line 4
    new-instance p1, Landroid/support/v4/dq;

    invoke-direct {p1}, Landroid/support/v4/dq;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/synchronized$do;->group:Landroid/support/v4/dq;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/synchronized$do;->rightMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public leftMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "TT",
            "Left;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/synchronized$do;->subscriber:Landroid/support/v4/y22;

    iget-object v1, p0, Lrx/internal/operators/synchronized$do;->group:Landroid/support/v4/dq;

    invoke-virtual {v0, v1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 2
    new-instance v0, Lrx/internal/operators/synchronized$do$do;

    invoke-direct {v0, p0}, Lrx/internal/operators/synchronized$do$do;-><init>(Lrx/internal/operators/synchronized$do;)V

    .line 3
    new-instance v1, Lrx/internal/operators/synchronized$do$if;

    invoke-direct {v1, p0}, Lrx/internal/operators/synchronized$do$if;-><init>(Lrx/internal/operators/synchronized$do;)V

    .line 4
    iget-object v2, p0, Lrx/internal/operators/synchronized$do;->group:Landroid/support/v4/dq;

    invoke-virtual {v2, v0}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    .line 5
    iget-object v2, p0, Lrx/internal/operators/synchronized$do;->group:Landroid/support/v4/dq;

    invoke-virtual {v2, v1}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    .line 6
    iget-object v2, p0, Lrx/internal/operators/synchronized$do;->this$0:Lrx/internal/operators/synchronized;

    iget-object v2, v2, Lrx/internal/operators/synchronized;->do:Lrx/Observable;

    invoke-virtual {v2, v0}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    .line 7
    iget-object v0, p0, Lrx/internal/operators/synchronized$do;->this$0:Lrx/internal/operators/synchronized;

    iget-object v0, v0, Lrx/internal/operators/synchronized;->if:Lrx/Observable;

    invoke-virtual {v0, v1}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    return-void
.end method
