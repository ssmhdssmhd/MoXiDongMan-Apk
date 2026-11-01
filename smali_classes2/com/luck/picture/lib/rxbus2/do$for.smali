.class Lcom/luck/picture/lib/rxbus2/do$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/rxbus2/do;->for(Landroid/support/v4/b32;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/b32;

.field public final synthetic if:Lcom/luck/picture/lib/rxbus2/do;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/rxbus2/do;Landroid/support/v4/b32;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/rxbus2/do$for;->if:Lcom/luck/picture/lib/rxbus2/do;

    iput-object p2, p0, Lcom/luck/picture/lib/rxbus2/do$for;->do:Landroid/support/v4/b32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/do$for;->if:Lcom/luck/picture/lib/rxbus2/do;

    iget-object v1, p0, Lcom/luck/picture/lib/rxbus2/do$for;->do:Landroid/support/v4/b32;

    invoke-static {v0, v1, p1}, Lcom/luck/picture/lib/rxbus2/do;->do(Lcom/luck/picture/lib/rxbus2/do;Landroid/support/v4/b32;Ljava/lang/Object;)V

    return-void
.end method
