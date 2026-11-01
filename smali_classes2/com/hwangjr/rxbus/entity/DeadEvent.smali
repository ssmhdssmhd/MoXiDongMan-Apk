.class public Lcom/hwangjr/rxbus/entity/DeadEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final event:Ljava/lang/Object;

.field public final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hwangjr/rxbus/entity/DeadEvent;->source:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/hwangjr/rxbus/entity/DeadEvent;->event:Ljava/lang/Object;

    return-void
.end method
