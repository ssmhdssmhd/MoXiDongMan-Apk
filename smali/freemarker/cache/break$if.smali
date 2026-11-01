.class Lfreemarker/cache/break$if;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/cache/break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private final do:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lfreemarker/cache/break$do;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lfreemarker/cache/break$do;->for()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    invoke-virtual {p1}, Lfreemarker/cache/break$do;->do()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/cache/break$if;->do:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/break$if;->do:Ljava/lang/Object;

    return-object v0
.end method
