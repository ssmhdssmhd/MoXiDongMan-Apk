.class Lrx/internal/operators/x1$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/x1$if;->do(Lrx/internal/operators/OperatorTimeoutBase$do;Ljava/lang/Long;Ljava/lang/Object;Lrx/if$do;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/OperatorTimeoutBase$do;

.field public final synthetic for:Lrx/internal/operators/x1$if;

.field public final synthetic if:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lrx/internal/operators/x1$if;Lrx/internal/operators/OperatorTimeoutBase$do;Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/x1$if$do;->for:Lrx/internal/operators/x1$if;

    iput-object p2, p0, Lrx/internal/operators/x1$if$do;->do:Lrx/internal/operators/OperatorTimeoutBase$do;

    iput-object p3, p0, Lrx/internal/operators/x1$if$do;->if:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/x1$if$do;->do:Lrx/internal/operators/OperatorTimeoutBase$do;

    iget-object v1, p0, Lrx/internal/operators/x1$if$do;->if:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OperatorTimeoutBase$do;->do(J)V

    return-void
.end method
