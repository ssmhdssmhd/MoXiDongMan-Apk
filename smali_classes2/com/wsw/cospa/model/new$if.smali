.class Lcom/wsw/cospa/model/new$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/model/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private do:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final synthetic for:Lcom/wsw/cospa/model/new;

.field private if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wsw/cospa/model/new;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/model/new$if;->for:Lcom/wsw/cospa/model/new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/wsw/cospa/model/new$if;->do:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/wsw/cospa/model/new$if;->if:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/model/new;Ljava/lang/Object;Ljava/util/List;Lcom/wsw/cospa/model/new$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/model/new$if;-><init>(Lcom/wsw/cospa/model/new;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/model/new$if;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/model/new$if;->do:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic if(Lcom/wsw/cospa/model/new$if;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/model/new$if;->if:Ljava/util/List;

    return-object p0
.end method
