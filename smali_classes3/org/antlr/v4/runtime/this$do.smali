.class Lorg/antlr/v4/runtime/this$do;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList<",
        "Lorg/antlr/v4/runtime/ANTLRErrorListener;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/antlr/v4/runtime/this;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/this;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/antlr/v4/runtime/this$do;->this$0:Lorg/antlr/v4/runtime/this;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 2
    sget-object p1, Landroid/support/v4/tq;->do:Landroid/support/v4/tq;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
