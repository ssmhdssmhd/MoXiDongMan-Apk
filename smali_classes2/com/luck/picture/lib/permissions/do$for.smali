.class Lcom/luck/picture/lib/permissions/do$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/permissions/do;->const(Lio/reactivex/new;[Ljava/lang/String;)Lio/reactivex/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Object;",
        "Lio/reactivex/new<",
        "Landroid/support/v4/dd1;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:[Ljava/lang/String;

.field public final synthetic if:Lcom/luck/picture/lib/permissions/do;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/permissions/do;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/permissions/do$for;->if:Lcom/luck/picture/lib/permissions/do;

    iput-object p2, p0, Lcom/luck/picture/lib/permissions/do$for;->do:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/permissions/do$for;->do(Ljava/lang/Object;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public do(Ljava/lang/Object;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/new<",
            "Landroid/support/v4/dd1;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/luck/picture/lib/permissions/do$for;->if:Lcom/luck/picture/lib/permissions/do;

    iget-object v0, p0, Lcom/luck/picture/lib/permissions/do$for;->do:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/luck/picture/lib/permissions/do;->if(Lcom/luck/picture/lib/permissions/do;[Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method
