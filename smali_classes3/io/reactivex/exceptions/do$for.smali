.class final Lio/reactivex/exceptions/do$for;
.super Lio/reactivex/exceptions/do$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/exceptions/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation


# instance fields
.field private final do:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/exceptions/do$if;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/exceptions/do$for;->do:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/exceptions/do$for;->do:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method
