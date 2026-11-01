.class public final synthetic Landroid/support/v4/qp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/luck/picture/lib/rxbus2/if$new;

.field public final synthetic if:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/luck/picture/lib/rxbus2/if$new;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/qp1;->do:Lcom/luck/picture/lib/rxbus2/if$new;

    iput-object p2, p0, Landroid/support/v4/qp1;->if:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/qp1;->do:Lcom/luck/picture/lib/rxbus2/if$new;

    iget-object v1, p0, Landroid/support/v4/qp1;->if:[Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lcom/luck/picture/lib/rxbus2/if;->if(Lcom/luck/picture/lib/rxbus2/if$new;[Ljava/lang/Object;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
