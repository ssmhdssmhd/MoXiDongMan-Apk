.class Lnet/minidev/json/reader/try$import;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/minidev/json/reader/JsonWriterI;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/minidev/json/reader/try;->try()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/minidev/json/reader/JsonWriterI<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lnet/minidev/json/reader/try;


# direct methods
.method public constructor <init>(Lnet/minidev/json/reader/try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/minidev/json/reader/try$import;->do:Lnet/minidev/json/reader/try;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;Ljava/lang/Appendable;Lnet/minidev/json/for;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p2, p1}, Lnet/minidev/json/for;->public(Ljava/lang/Appendable;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/for;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lnet/minidev/json/reader/try$import;->do(Ljava/lang/String;Ljava/lang/Appendable;Lnet/minidev/json/for;)V

    return-void
.end method
