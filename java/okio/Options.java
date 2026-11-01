package okio;

import android.support.v4.aq0;
import android.support.v4.m41;
import android.support.v4.rx;
import freemarker.core.k;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;
import kotlin.Cwhile;
import kotlin.collections.Cclass;
import kotlin.collections.Cnew;
import kotlin.collections.Cpublic;
import kotlin.collections.Cthrow;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u0015\n\u0002\b\u000b\u0018\u0000 \u00172\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004:\u0001\u0017B!\b\u0002\u0012\u000e\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0015\u0010\u0016J\u0011\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0096\u0002R$\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\b8\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u000e\u001a\u00020\r8\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u00058V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0018"}, d2 = {"Lokio/Options;", "Lkotlin/collections/new;", "Lokio/ByteString;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "index", "get", "", "byteStrings", "[Lokio/ByteString;", "getByteStrings$okio", "()[Lokio/ByteString;", "", "trie", "[I", "getTrie$okio", "()[I", "getSize", "()I", "size", "<init>", "([Lokio/ByteString;[I)V", "Companion", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class Options extends Cnew<ByteString> implements RandomAccess {

    @m41
    public static final Companion Companion = new Companion(null);

    @m41
    private final ByteString[] byteStrings;

    @m41
    private final int[] trie;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018JT\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0002\u0010\u000b\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u00062\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\bH\u0002J#\u0010\u0012\u001a\u00020\u00112\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\t0\u0010\"\u00020\tH\u0007¢\u0006\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0016\u001a\u00020\u0002*\u00020\u00048B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Lokio/Options$Companion;", "", "", "nodeOffset", "Lokio/Buffer;", k.f23935package, "", "byteStringOffset", "", "Lokio/ByteString;", "byteStrings", "fromIndex", "toIndex", "indexes", "Landroid/support/v4/ub2;", "buildTrieRecursive", "", "Lokio/Options;", "of", "([Lokio/ByteString;)Lokio/Options;", "getIntCount", "(Lokio/Buffer;)J", "intCount", "<init>", "()V", "okio"}, k = 1, mv = {1, 5, 1})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }

        private final void buildTrieRecursive(long j, Buffer buffer, int i, List<? extends ByteString> list, int i2, int i3, List<Integer> list2) throws IOException {
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            Buffer buffer2;
            int i9 = i;
            if (!(i2 < i3)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (i2 < i3) {
                int i10 = i2;
                while (true) {
                    int i11 = i10 + 1;
                    if (!(list.get(i10).size() >= i9)) {
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                    if (i11 >= i3) {
                        break;
                    } else {
                        i10 = i11;
                    }
                }
            }
            ByteString byteString = list.get(i2);
            ByteString byteString2 = list.get(i3 - 1);
            if (i9 == byteString.size()) {
                int iIntValue = list2.get(i2).intValue();
                int i12 = i2 + 1;
                ByteString byteString3 = list.get(i12);
                i4 = i12;
                i5 = iIntValue;
                byteString = byteString3;
            } else {
                i4 = i2;
                i5 = -1;
            }
            if (byteString.getByte(i9) == byteString2.getByte(i9)) {
                int iMin = Math.min(byteString.size(), byteString2.size());
                if (i9 < iMin) {
                    int i13 = i9;
                    i6 = 0;
                    while (true) {
                        int i14 = i13 + 1;
                        if (byteString.getByte(i13) != byteString2.getByte(i13)) {
                            break;
                        }
                        i6++;
                        if (i14 >= iMin) {
                            break;
                        } else {
                            i13 = i14;
                        }
                    }
                } else {
                    i6 = 0;
                }
                long intCount = j + getIntCount(buffer) + 2 + i6 + 1;
                buffer.writeInt(-i6);
                buffer.writeInt(i5);
                int i15 = i9 + i6;
                if (i9 < i15) {
                    while (true) {
                        int i16 = i9 + 1;
                        buffer.writeInt(byteString.getByte(i9) & 255);
                        if (i16 >= i15) {
                            break;
                        } else {
                            i9 = i16;
                        }
                    }
                }
                if (i4 + 1 == i3) {
                    if (!(i15 == list.get(i4).size())) {
                        throw new IllegalStateException("Check failed.".toString());
                    }
                    buffer.writeInt(list2.get(i4).intValue());
                    return;
                } else {
                    Buffer buffer3 = new Buffer();
                    buffer.writeInt(((int) (getIntCount(buffer3) + intCount)) * (-1));
                    buildTrieRecursive(intCount, buffer3, i15, list, i4, i3, list2);
                    buffer.writeAll(buffer3);
                    return;
                }
            }
            int i17 = i4 + 1;
            int i18 = 1;
            if (i17 < i3) {
                while (true) {
                    int i19 = i17 + 1;
                    if (list.get(i17 - 1).getByte(i9) != list.get(i17).getByte(i9)) {
                        i18++;
                    }
                    if (i19 >= i3) {
                        break;
                    } else {
                        i17 = i19;
                    }
                }
            }
            long intCount2 = j + getIntCount(buffer) + 2 + (i18 * 2);
            buffer.writeInt(i18);
            buffer.writeInt(i5);
            if (i4 < i3) {
                int i20 = i4;
                while (true) {
                    int i21 = i20 + 1;
                    byte b = list.get(i20).getByte(i9);
                    if (i20 == i4 || b != list.get(i20 - 1).getByte(i9)) {
                        buffer.writeInt(b & 255);
                    }
                    if (i21 >= i3) {
                        break;
                    } else {
                        i20 = i21;
                    }
                }
            }
            Buffer buffer4 = new Buffer();
            while (i4 < i3) {
                byte b2 = list.get(i4).getByte(i9);
                int i22 = i4 + 1;
                if (i22 < i3) {
                    int i23 = i22;
                    while (true) {
                        int i24 = i23 + 1;
                        if (b2 != list.get(i23).getByte(i9)) {
                            i7 = i23;
                            break;
                        } else if (i24 >= i3) {
                            break;
                        } else {
                            i23 = i24;
                        }
                    }
                    i7 = i3;
                } else {
                    i7 = i3;
                }
                if (i22 == i7 && i9 + 1 == list.get(i4).size()) {
                    buffer.writeInt(list2.get(i4).intValue());
                    i8 = i7;
                    buffer2 = buffer4;
                } else {
                    buffer.writeInt(((int) (intCount2 + getIntCount(buffer4))) * (-1));
                    i8 = i7;
                    buffer2 = buffer4;
                    buildTrieRecursive(intCount2, buffer4, i9 + 1, list, i4, i7, list2);
                }
                buffer4 = buffer2;
                i4 = i8;
            }
            buffer.writeAll(buffer4);
        }

        public static /* synthetic */ void buildTrieRecursive$default(Companion companion, long j, Buffer buffer, int i, List list, int i2, int i3, List list2, int i4, Object obj) throws IOException {
            companion.buildTrieRecursive((i4 & 1) != 0 ? 0L : j, buffer, (i4 & 4) != 0 ? 0 : i, list, (i4 & 16) != 0 ? 0 : i2, (i4 & 32) != 0 ? list.size() : i3, list2);
        }

        private final long getIntCount(Buffer buffer) {
            return buffer.size() / 4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:56:0x00e4, code lost:
        
            continue;
         */
        @m41
        @aq0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Options of(@m41 ByteString... byteStrings) throws IOException {
            Csuper.m30700throw(byteStrings, "byteStrings");
            int i = 0;
            rx rxVar = null;
            if (byteStrings.length == 0) {
                return new Options(new ByteString[0], new int[]{0, -1}, rxVar);
            }
            List listDx = Cclass.Dx(byteStrings);
            Cpublic.z(listDx);
            ArrayList arrayList = new ArrayList(byteStrings.length);
            for (ByteString byteString : byteStrings) {
                arrayList.add(-1);
            }
            Object[] array = arrayList.toArray(new Integer[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            Integer[] numArr = (Integer[]) array;
            List listC = Cthrow.c(Arrays.copyOf(numArr, numArr.length));
            int length = byteStrings.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                listC.set(Cthrow.m30195throws(listDx, byteStrings[i2], 0, 0, 6, null), Integer.valueOf(i3));
                i2++;
                i3++;
            }
            if (!(((ByteString) listDx.get(0)).size() > 0)) {
                throw new IllegalArgumentException("the empty byte string is not a supported option".toString());
            }
            int i4 = 0;
            while (i4 < listDx.size()) {
                ByteString byteString2 = (ByteString) listDx.get(i4);
                int i5 = i4 + 1;
                int i6 = i5;
                while (i6 < listDx.size()) {
                    ByteString byteString3 = (ByteString) listDx.get(i6);
                    if (!byteString3.startsWith(byteString2)) {
                        break;
                    }
                    if (!(byteString3.size() != byteString2.size())) {
                        throw new IllegalArgumentException(Csuper.m30690private("duplicate option: ", byteString3).toString());
                    }
                    if (((Number) listC.get(i6)).intValue() > ((Number) listC.get(i4)).intValue()) {
                        listDx.remove(i6);
                        listC.remove(i6);
                    } else {
                        i6++;
                    }
                }
                i4 = i5;
            }
            Buffer buffer = new Buffer();
            buildTrieRecursive$default(this, 0L, buffer, 0, listDx, 0, 0, listC, 53, null);
            int[] iArr = new int[(int) getIntCount(buffer)];
            while (!buffer.exhausted()) {
                iArr[i] = buffer.readInt();
                i++;
            }
            Object[] objArrCopyOf = Arrays.copyOf(byteStrings, byteStrings.length);
            Csuper.m30696super(objArrCopyOf, "java.util.Arrays.copyOf(this, size)");
            return new Options((ByteString[]) objArrCopyOf, iArr, rxVar);
        }
    }

    private Options(ByteString[] byteStringArr, int[] iArr) {
        this.byteStrings = byteStringArr;
        this.trie = iArr;
    }

    public /* synthetic */ Options(ByteString[] byteStringArr, int[] iArr, rx rxVar) {
        this(byteStringArr, iArr);
    }

    @m41
    @aq0
    public static final Options of(@m41 ByteString... byteStringArr) {
        return Companion.of(byteStringArr);
    }

    @Override // kotlin.collections.Cdo, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ByteString) {
            return contains((ByteString) obj);
        }
        return false;
    }

    @m41
    public final ByteString[] getByteStrings$okio() {
        return this.byteStrings;
    }

    @Override // kotlin.collections.Cnew, kotlin.collections.Cdo
    public int getSize() {
        return this.byteStrings.length;
    }

    @m41
    public final int[] getTrie$okio() {
        return this.trie;
    }

    @Override // kotlin.collections.Cnew, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ByteString) {
            return indexOf((ByteString) obj);
        }
        return -1;
    }

    @Override // kotlin.collections.Cnew, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ByteString) {
            return lastIndexOf((ByteString) obj);
        }
        return -1;
    }

    public /* bridge */ boolean contains(ByteString byteString) {
        return super.contains((Object) byteString);
    }

    @Override // kotlin.collections.Cnew, java.util.List
    @m41
    public ByteString get(int i) {
        return this.byteStrings[i];
    }

    public /* bridge */ int indexOf(ByteString byteString) {
        return super.indexOf((Object) byteString);
    }

    public /* bridge */ int lastIndexOf(ByteString byteString) {
        return super.lastIndexOf((Object) byteString);
    }
}
