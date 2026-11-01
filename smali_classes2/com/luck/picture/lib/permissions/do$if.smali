.class Lcom/luck/picture/lib/permissions/do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/permissions/do;->new([Ljava/lang/String;)Lio/reactivex/ObservableTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableTransformer<",
        "TT;",
        "Landroid/support/v4/dd1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:[Ljava/lang/String;

.field public final synthetic if:Lcom/luck/picture/lib/permissions/do;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/permissions/do;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/permissions/do$if;->if:Lcom/luck/picture/lib/permissions/do;

    iput-object p2, p0, Lcom/luck/picture/lib/permissions/do$if;->do:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/new;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/new<",
            "TT;>;)",
            "Lio/reactivex/ObservableSource<",
            "Landroid/support/v4/dd1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/permissions/do$if;->if:Lcom/luck/picture/lib/permissions/do;

    iget-object v1, p0, Lcom/luck/picture/lib/permissions/do$if;->do:[Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/luck/picture/lib/permissions/do;->do(Lcom/luck/picture/lib/permissions/do;Lio/reactivex/new;[Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method
